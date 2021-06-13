import 'package:flutter/material.dart';

class MediaPageLatestArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> mediaPageLatestArticle = <Widget>[
      Text('最新記事'),
    ];

    return ListView(children: mediaPageLatestArticle);
  }
}
