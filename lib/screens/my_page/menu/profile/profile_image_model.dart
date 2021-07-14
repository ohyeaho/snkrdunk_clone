import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class ProfileImageModel extends ChangeNotifier {
  File imageFile;
  bool isLoading = false;

  startLoading() {
    isLoading = true;
    notifyListeners();
  }

  endLoading() {
    isLoading = false;
    notifyListeners();
  }

  setImage(File imageFile) {
    this.imageFile = imageFile;
    notifyListeners();
  }

  Future<String> _uploadImageFile() async {
    if (imageFile == null) {
      return '';
    }
    final storage = FirebaseStorage.instance;
    final ref = storage.ref().child('users').child(UserManage().user.uid);
    final snapshot = await ref.putFile(
      imageFile,
    );
    final downloadURL = await snapshot.ref.getDownloadURL();
    return downloadURL;
  }

  Future updateProfile(User user) async {
    final imageURL = await _uploadImageFile();
    return UserManage()
        .users
        .doc(user.uid)
        .update({
          'imageURL': imageURL,
          'updateAt': Timestamp.now(),
        })
        .then((value) => print('image add successfly'))
        .catchError((e) => print('failded to add image: $e'));
  }
}
