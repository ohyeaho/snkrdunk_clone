import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/components/grey_space.dart';
import 'package:snkrdunk_clone/screens/login_signup/sign_up.dart';
import 'package:snkrdunk_clone/screens/news.dart';
import 'package:snkrdunk_clone/screens/notice.dart';
import 'package:snkrdunk_clone/screens/post/new_post.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class MyPageAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      return MyPage();
    }
    return SignUp();
  }
}

class MyPage extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    void onPressed(BuildContext context) async {
      final Size size = MediaQuery.of(context).size;
      double height = size.height;
      await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: height * 0.5,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0))),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: Center(
                    child: Text(
                      'スニーカーの出品・アパレルの出品\n質問や写真を投稿することができます。',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 2),
                    child: ElevatedButton(
                      onPressed: () {
                        //todo: ボタン処理
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            child: Image.asset('images/sn_buy.jpg'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'スニーカーを出品する',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 2),
                    child: ElevatedButton(
                      onPressed: () {
                        //todo: ボタン処理
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            child: Image.asset('images/ap_buy.jpg'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'アパレルを出品する',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 2),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewPost(user),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            child: Image.asset('images/post.jpg'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '写真や文章を投稿する',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.09)
              ],
            ),
          );
        },
      );
    }

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
                  Container(
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      child: Container(
                        child: StreamBuilder<DocumentSnapshot>(
                          stream: UserManage().getUid(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(75),
                                child: snapshot.data['imageURL'] != ''
                                    ? Image.network(
                                        snapshot.data['imageURL'],
                                        fit: BoxFit.fill,
                                      )
                                    : FittedBox(
                                        child: Icon(
                                          Icons.account_circle,
                                        ),
                                      ),
                              );
                            } else {
                              return Text('Loading...');
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
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
      GreySpace(),
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
          border: Border(
              top: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('マイコレクション'),
        ),
      ),
      Container(
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
      GreySpace(),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('お気に入り'),
        ),
      ),
      GreySpace(),
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
      body: ListView(children: myPageList),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.add_circle_outline,
          size: 30,
        ),
        onPressed: () => onPressed(context),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(),
      ),
    );
  }
}
