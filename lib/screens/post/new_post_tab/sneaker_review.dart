import 'package:flutter/material.dart';

class SneakerReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> sneakerReview = <Widget>[
      Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              'どのスニーカーをレビューしますか？',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
      Container(
        color: Colors.grey.shade200,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'スニーカー名を入力',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'マイコレクションのスニーカー',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
    ];

    return ListView(children: sneakerReview);
  }
}
