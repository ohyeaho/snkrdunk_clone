import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/screens/media/media_page_calendar.dart';
import 'package:snkrdunk_clone/screens/media/media_page_latest_article.dart';
import 'package:snkrdunk_clone/screens/media/media_page_new_post.dart';

class Media extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Text('ブランドやスニーカー名で検索'),
                ],
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/search_page');
              },
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
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
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                  child: Text('最新記事',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Tab(
                  child: Text('新着投稿',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Tab(
                  child: Text('カレンダー',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MediaPageLatestArticle(),
            MediaPageNewPost(),
            MediaPageCalendar(),
          ],
        ),
      ),
    );
  }
}
