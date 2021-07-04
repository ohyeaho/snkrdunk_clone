import 'package:flutter/material.dart';

class ButtonMarket extends StatelessWidget {
  final String image;
  final String price;
  final String stock;
  final String offer;
  final String name;

  ButtonMarket(
      {@required this.image,
      @required this.price,
      @required this.stock,
      @required this.offer,
      @required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: () {
          //todo: ボタン処理
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(image),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: '¥$price〜',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextSpan(
                      text: '即購入可',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                '出品$stock / オファー$offer',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
