import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ElevatedButton(
          child: Text('ブランドやスニーカー名で検索'),
          style: ElevatedButton.styleFrom(
            primary: Colors.white30,
            onPrimary: Colors.grey,
            shape: StadiumBorder(),
          ),
          onPressed: () {},
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  //todo
                },
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  //todo
                },
                icon: Icon(
                  Icons.article_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
