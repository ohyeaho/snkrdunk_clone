import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextButton(
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Text('ブランドやスニーカー名で検索'),
              ],
            ),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.grey,
            ),
            onPressed: () {},
          ),
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
      body: Container(
        child: Center(
          child: Text('スニーカー'),
        ),
      ),
    );
  }
}
