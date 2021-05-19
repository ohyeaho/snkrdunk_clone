import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listTiles = <Widget>[
      Container(
        child: ListTile(
          title: Text(
            'アカウント',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
      ),
      Container(
          decoration: new BoxDecoration(
            border: new Border(
              bottom: new BorderSide(color: Colors.black),
            ),
          ),
          child: ListTile(
            title: Text('プロフィール'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          )),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'メニュー',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(children: listTiles),
    );
  }
}
