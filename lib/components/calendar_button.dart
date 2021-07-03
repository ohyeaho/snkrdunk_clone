import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  final String month;
  final String day;
  final String image;
  final String topicText;
  final String price;

  CalendarButton(
      {@required this.month,
      @required this.day,
      @required this.image,
      @required this.topicText,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = size.height;

    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: () {
          //todo: ボタン処理
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    '$month月',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    day,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: height * 0.11,
                  child: Image.network(
                    'https://cdn.snkrdunk.com/uploads/media/20210525034858-4.jpeg',
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      topicText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      '価格 : $price',
                      style: TextStyle(color: Colors.red.shade600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
