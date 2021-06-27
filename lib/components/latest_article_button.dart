import 'package:flutter/material.dart';

class LatestArticleButton extends StatelessWidget {
  final String image;
  final String topText;
  final String subText;

  LatestArticleButton(
      {@required this.image, @required this.topText, @required this.subText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        primary: Colors.black,
      ),
      onPressed: () {
        //todo: ボタン処理
      },
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(height: 230),
            child: Image.network(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                topText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                subText,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
