import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SentencePhoto extends StatelessWidget {
  SentencePhoto(user);

  final User user = FirebaseAuth.instance.currentUser;

  final TextEditingController postTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> sentencePhoto = <Widget>[
      Container(
        color: Colors.cyan.shade50,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan,
                ),
                child: Center(
                  child: Text(
                    'POINT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.cyan, fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'サイズ感は？',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '、'),
                      TextSpan(
                        text: 'どこで買える？',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'などの質問から'),
                      TextSpan(
                        text: 'コーデ写真',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'や'),
                      TextSpan(
                        text: '買えた！',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'など何でも気軽に投稿しよう！')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('投稿内容を入力'),
        ),
      ),
      Container(
        height: 195,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: postTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                hintText:
                    '例)・エアジョーダン1買ったんだけど、どんなパンツに合わせるのが良いだろう？コーデ教えて！・イージー買えた！みんなはどう？',
              ),
              maxLines: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  child: Text(
                    '#ハッシュタグ',
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('写真を追加'),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            height: 80,
            width: 80,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              onPressed: () {
                //todo: カメラロール
              },
              child: SizedBox(
                height: 80,
                width: 80,
                child: Image.network(
                  'https://assets.snkrdunk.com/54e543efe404095/img/post/sp-post-img-none.png',
                  // height: 80,
                  // width: 80,
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('登録・関連するスニーカー(記事)'),
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
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.cyan,
          ),
          child: TextButton(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () async {
              final date = DateTime.now().toLocal().toIso8601String();
              await FirebaseFirestore.instance
                  .collection('posts')
                  .doc()
                  .set({'text': postTextController.text, 'date': date});
              int count = 0;
              Navigator.popUntil(context, (_) => count++ >= 2);
            },
            child: Text(
              '投稿する',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )
    ];

    return ListView(children: sentencePhoto);
  }
}
