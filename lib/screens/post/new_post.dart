import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/screens/post/new_post_tab/sentence_photo.dart';
import 'package:snkrdunk_clone/screens/post/new_post_tab/sneaker_review.dart';

class NewPost extends StatelessWidget {
  NewPost(user);

  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: TextButton(
          child: Text(
            '完了',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text(
          '新規投稿',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text('文章や写真'),
                ),
                Tab(
                  child: Text('スニーカーレビュー'),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SentencePhoto(user),
                  SneakerReview(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
