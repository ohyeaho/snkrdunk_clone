import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> noticeItem = [
      'one',
      'two',
      'three',
      'four',
      'five',
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'お知らせ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: noticeItem.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.amber,
                              size: 30,
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('12/11(金)09:00〜発売「【販売リンクあり】12/11発売 AMB...」'),
                            SizedBox(height: 5),
                            Text(
                              '2020/12/11',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.snkrdunk.com/uploads/media/20201202005714-9.jpeg'),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
