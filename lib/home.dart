import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SNKRDUNK',
                style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('ログイン'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              ElevatedButton(
                child: Text('ユーザー登録'),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_up');
                },
              ),
              ElevatedButton(
                child: Text('app'),
                onPressed: () {
                  Navigator.pushNamed(context, '/market');
                },
              ),
              ElevatedButton(
                child: Text('マイページ'),
                onPressed: () {
                  Navigator.pushNamed(context, '/my_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
