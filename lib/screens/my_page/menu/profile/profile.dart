import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/components/bottom_navigation_bar.dart';
import 'package:snkrdunk_clone/ios_picker.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/profile/profile_image.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class Profile extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'プロフィール',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: width * 0.04,
          right: width * 0.04,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'プロフィール',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(75),
                        child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileImage()),
                            );
                          },
                          child: Container(
                            child: StreamBuilder<DocumentSnapshot>(
                              stream: UserManage().getUid(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(75),
                                    child: snapshot.data['imageURL'] != ''
                                        ? Image.network(
                                            snapshot.data['imageURL'],
                                            fit: BoxFit.fill,
                                          )
                                        : FittedBox(
                                            child: Icon(
                                              Icons.account_circle,
                                            ),
                                          ),
                                  );
                                } else {
                                  return Text('Loading...');
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileImage()),
                        );
                      },
                      child: Text('変更する'),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        side: BorderSide(color: Colors.black),
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                      ),
                    )
                  ],
                ),
              ),
              Text('ユーザー名'),
              Container(
                child: TextFormField(
                  controller: userNameController,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: '20文字以内(あとで変更可)',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('登録メールアドレス'),
              Container(
                child: TextFormField(
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'メールアドレス',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('自己紹介'),
              Container(
                child: TextFormField(
                  textAlign: TextAlign.left,
                  minLines: 4,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: '好きなスニーカーやブランドなどあなたの自己紹介を書こう！',
                    hintMaxLines: 2,
                  ),
                ),
              ),
              SizedBox(height: 10),
              IosPicker(),
              SizedBox(height: 10),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 5),
                  Text('instagram'),
                ],
              ),
              Container(
                child: TextFormField(
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: Icon(FontAwesomeIcons.at),
                    hintText: 'アカウントID',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 5),
                  Text('Twitter'),
                ],
              ),
              Container(
                child: TextFormField(
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: Icon(FontAwesomeIcons.at),
                    hintText: 'アカウントID',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '登録する',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext dialogContext) {
                        return CupertinoAlertDialog(
                          title: Text(
                            '本当にログアウトしますか？',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text(
                                'キャンセル',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                              },
                            ),
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                context.read<AuthenticationService>().signOut();
                                FirebaseAuth.instance
                                    .authStateChanges()
                                    .listen((User user) {
                                  if (user == null) {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushAndRemoveUntil(
                                            CupertinoPageRoute(
                                                builder: (context) => Home()),
                                            (_) => false);
                                  }
                                });
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    'ログアウト',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black12),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
