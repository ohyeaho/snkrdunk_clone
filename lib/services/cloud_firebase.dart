import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserManage {
  // Create a CollectionReference called users that references the firestore collection
  final User user = FirebaseAuth.instance.currentUser;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  Future<void> updateName(String name) {
    return users
        .doc(user.uid)
        .update({'name': name})
        .then((value) => print('name add successfly'))
        .catchError((e) => print('failded to add name: $e'));
  }

  Future<void> updateEmail(String email) {
    return user
        .updateEmail(email)
        .then((value) => print('email add successfly'))
        .catchError((e) => print('failded to add email: $e'));
  }

  Future<void> updatePassword(
      {@required String currentPassword, @required String newPassword}) async {
    EmailAuthCredential credential = EmailAuthProvider.credential(
        email: user.email, password: currentPassword);
    await FirebaseAuth.instance.currentUser
        .reauthenticateWithCredential(credential);
    return user
        .updatePassword(newPassword)
        .then((value) => print('pass change successfly'))
        .catchError((e) => print('failded to change pass: $e'));
  }

  Future<void> updateEPassword(String password) {
    return users
        .doc(user.uid)
        .update({'password': password})
        .then((value) => print('password add successfly'))
        .catchError((e) => print('failded to add password: $e'));
  }

  Future<void> updatePersonalInfo(
    String userName,
    String birthday,
    String age,
  ) {
    return users
        .doc(user.uid)
        .update({
          'updateAt': Timestamp.now(),
          'userName': userName,
          'birthday': birthday,
          'age': age,
        })
        .then((value) => print('personal_info add successfly'))
        .catchError((e) => print('failded to add personal_info: $e'));
  }

  Future<void> setUserAccount({
    @required String userName,
    @required String gender,
    @required String birthday,
    @required String age,
  }) {
    return users
        .doc(user.uid)
        .set({
          'createAt': Timestamp.now(),
          'userName': userName,
          'gender': '',
          'birthday': '',
          'age': '',
          'imageURL': '',
          'uri': '',
        })
        .then((value) => print('add successfly'))
        .catchError((e) => print('failded to set: $e'));
  }

  Stream<DocumentSnapshot> getUid() => users.doc(user.uid).snapshots();
}
