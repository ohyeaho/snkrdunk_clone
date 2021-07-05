import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snkrdunk_clone/screens/post/new_post.dart';

class Post extends StatelessWidget {
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
                          Icon(
                            Icons.ice_skating,
                            color: Colors.black,
                          ),
                          Text(
                            'スニーカーを出品する',
                            style: TextStyle(
                              color: Colors.black,
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
                          FaIcon(
                            FontAwesomeIcons.tshirt,
                            color: Colors.black,
                          ),
                          Text(
                            'アパレルを出品する',
                            style: TextStyle(
                              color: Colors.black,
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
                          Icon(
                            Icons.photo_library_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            '写真や文章を投稿する',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.08)
              ],
            ),
          );
        },
      );
    }
  }
}
