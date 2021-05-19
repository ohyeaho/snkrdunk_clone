import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: Container(),
    );
  }
}