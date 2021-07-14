import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/profile/profile_image_model.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class ProfileImage extends StatelessWidget {
  final picker = ImagePicker();
  ProfileImage({this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileImageModel>(
      create: (_) => ProfileImageModel(),
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              title: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'プロフィール画像変更',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ),
            body: Consumer<ProfileImageModel>(
              builder: (context, model, child) {
                return Container(
                  width: double.infinity,
                  color: Color(0xFFEAEAEA),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                        ),
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: InkWell(
                            onTap: () async {
                              final pickedFile = await picker.getImage(
                                  source: ImageSource.gallery);
                              model.setImage(File(pickedFile.path));
                            },
                            child: model.imageFile != null
                                ? Image.file(
                                    model.imageFile,
                                    fit: BoxFit.fill,
                                  )
                                : Container(
                                    child: StreamBuilder<DocumentSnapshot>(
                                        stream: UserManage().getUid(),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            return snapshot.data['imageURL'] !=
                                                    ''
                                                ? Image.network(
                                                    snapshot.data['imageURL'],
                                                    fit: BoxFit.fill,
                                                  )
                                                : FittedBox(
                                                    child: Icon(
                                                      Icons.account_circle,
                                                    ),
                                                  );
                                          } else {
                                            return Text('Loading...');
                                          }
                                        }),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () async {
                          model.startLoading();
                          await model.updateProfile(UserManage().user);
                          model.endLoading();
                          Navigator.of(context).pop();
                        },
                        child: Text('追加する'),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Consumer<ProfileImageModel>(builder: (context, model, child) {
            return model.isLoading
                ? Container(
                    color: Colors.black.withOpacity(0.3),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : SizedBox();
          }),
        ],
      ),
    );
  }
}
