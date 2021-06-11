import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> myPageList = <Widget>[
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('name'),
                      Text('本人確認する'),
                    ],
                  )
                ],
              ),
              OutlinedButton(
                child: Text('メニュー'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu');
                },
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('友達招待で最大¥4,000クーポン!'),
                  Text('あなたの招待コード：000000'),
                ],
              ),
              OutlinedButton(
                child: Text('詳細を見る'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  //todo: ボタン処理
                  // Navigator.pushNamed(context, '/menu');
                },
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 15,
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
            color: Colors.black12,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('取引ステータス'),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.grey)),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    children: [
                      Text('0'),
                      Text('取引中'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.grey)),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    children: [
                      Text('0'),
                      Text('オファー'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.grey)),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    children: [
                      Text('0'),
                      Text('出品中'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    children: [
                      Text('0'),
                      Text('取引済み'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.black12,
        child: Card(
          margin: const EdgeInsets.all(8),
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text('#私を構成する4足のスニーカー'),
                OutlinedButton(
                  child: Text('オリジナル画像を作成する'),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(color: Colors.black),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                    // Navigator.pushNamed(context, '/menu');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('マイコレクション'),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            child: Text('マイコレクションに追加する'),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              //todo: ボタン処理
              // Navigator.pushNamed(context, '/menu');
            },
          ),
        ),
      ),
      SizedBox(
        height: 15,
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
            color: Colors.black12,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('お気に入り'),
        ),
      ),
      SizedBox(
        height: 15,
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
            color: Colors.black12,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('投稿一覧'),
        ),
      ),
      SizedBox(
        height: 30,
        child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
            color: Colors.black12,
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'マイページ',
          style: TextStyle(
            color: Colors.black,
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
      body: ListView(children: myPageList),
    );
  }
}
