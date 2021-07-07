import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/screens/post/new_post.dart';

class MediaPageNewPost extends StatelessWidget {
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

    // List<Widget> mediaPageNewPost = <Widget>[
    //   Expanded(
    //       child: StreamBuilder<QuerySnapshot>(
    //     stream: FirebaseFirestore.instance
    //         .collection('posts')
    //         .orderBy('date')
    //         .snapshots(),
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {
    //         final List<DocumentSnapshot> documents = snapshot.data.docs;
    //         return ListView(
    //           children: documents.map((document) {
    //             return Card(
    //               child: ListTile(
    //                 title: Text(document['text']),
    //                 // subtitle: Text(document['userName']),
    //                 // trailing: document['email'] == user.email
    //                 //     ? IconButton(
    //                 //         onPressed: () async {
    //                 //           await FirebaseFirestore.instance
    //                 //               .collection('posts')
    //                 //               .doc(document.id)
    //                 //               .delete();
    //                 //         },
    //                 //         icon: Icon(Icons.delete),
    //                 //       )
    //                 //     : null,
    //               ),
    //             );
    //           }).toList(),
    //         );
    //       }
    //       return Center(
    //         child: Text('読込中...'),
    //       );
    //     },
    //   ))
    // ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('posts')
                .orderBy('date')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final List<DocumentSnapshot> documents = snapshot.data.docs;
                return ListView(
                  children: documents.map((document) {
                    return Card(
                      child: ListTile(
                        title: Text(document['text']),
                        // subtitle: Text(document['userName']),
                        // trailing: document['email'] == user.email
                        //     ? IconButton(
                        //         onPressed: () async {
                        //           await FirebaseFirestore.instance
                        //               .collection('posts')
                        //               .doc(document.id)
                        //               .delete();
                        //         },
                        //         icon: Icon(Icons.delete),
                        //       )
                        //     : null,
                      ),
                    );
                  }).toList(),
                );
              }
              return Center(
                child: Text('読込中...'),
              );
            },
          ))
        ],
      ),
      // ListView(children: mediaPageNewPost),
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
