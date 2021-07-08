import 'package:flutter/material.dart';

class ButtonMarketRanking extends StatelessWidget {
  final String imageRanking;
  final String image;
  final String price;
  final String stock;
  final String offer;
  final String name;
  final Function onPressed;

  ButtonMarketRanking({
    @required this.imageRanking,
    @required this.image,
    @required this.price,
    @required this.stock,
    @required this.offer,
    @required this.name,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 25,
              child: Image.asset(imageRanking),
            ),
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
