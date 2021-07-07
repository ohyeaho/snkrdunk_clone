import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:snkrdunk_clone/screens/news.dart';
import 'package:snkrdunk_clone/screens/notice.dart';

class Favorite extends StatelessWidget {
  final List<String> favoriteItem = ['one', 'two', 'three', 'four', 'five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'お気に入り',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notice()),
                  );
                },
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => News()),
                  );
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
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            height: 15,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              ),
              color: Colors.black12,
            ),
          );
        },
        itemCount: favoriteItem.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            height: 150,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: TextButton(
                    style: TextButton.styleFrom(primary: Colors.grey),
                    onPressed: () {
                      //todo: ボタン処理
                    },
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.network(
                            'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'NIKE AIR JORDAN 1 RETRO CHICAGO (2015)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('0,000人がお気に入り中')
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: FittedBox(
                              child: Text(
                                '26.5cm',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: FittedBox(
                                          child: Text(
                                            '¥000,000',
                                            // textAlign: TextAlign.end,
                                            style: TextStyle(
                                              color: Colors.red.shade600,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            '最安出品',
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 10.0),
                                  child: TextButton(
                                    onPressed: () {
                                      //todo: ボタン処理
                                    },
                                    child: Text(
                                      '即購入',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      minimumSize: Size(0, 0),
                                      backgroundColor: Colors.grey.shade300,
                                      primary: Colors.black,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: FittedBox(
                                          child: Text(
                                            '¥000,000',
                                            // textAlign: TextAlign.end,
                                            style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            '最高オファー',
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 10.0),
                                  child: TextButton(
                                    onPressed: () {
                                      //todo: ボタン処理
                                    },
                                    child: Text(
                                      'オファー',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      minimumSize: Size(0, 0),
                                      backgroundColor: Colors.grey.shade300,
                                      primary: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
