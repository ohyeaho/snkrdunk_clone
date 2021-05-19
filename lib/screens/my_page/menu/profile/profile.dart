import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/ios_picker.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';

class Profile extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
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
                    context.read<AuthenticationService>().signOut();
                    FirebaseAuth.instance
                        .authStateChanges()
                        .listen((User user) {
                      if (user == null) {
                        Navigator.pushReplacementNamed(context, "/market");
                      }
                    });
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
            ],
          ),
        ),
      ),
    );
  }
}
