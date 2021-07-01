import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snkrdunk_clone/home.dart';
import 'package:snkrdunk_clone/screens/favorite.dart';
import 'package:snkrdunk_clone/screens/login_signup/login.dart';
import 'package:snkrdunk_clone/screens/login_signup/sign_up.dart';
import 'package:snkrdunk_clone/screens/market/market.dart';
import 'package:snkrdunk_clone/screens/media/media.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/menu.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/profile/profile.dart';
import 'package:snkrdunk_clone/screens/my_page/my_page.dart';
import 'package:snkrdunk_clone/screens/search_page.dart';

final appRoutes = {
  '/market': (context) => Market(),
  '/my_page': (context) => MyPage(),
  '/menu': (context) => Menu(),
  '/sign_up': (context) => SignUp(),
  '/login': (context) => Login(),
  '/profile': (context) => Profile(),
  '/home': (context) => HomePage(),
  '/search_page': (context) => SearchPage(),
};

class Home extends StatelessWidget {
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
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

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'マーケット',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'メディア',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 45,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'お気に入り',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: 'マイページ',
          ),
        ],
        activeColor: Colors.black,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          routes: appRoutes,
          builder: (context) {
            switch (index) {
              case 0:
                return Market();
                break;
              case 1:
                return Media();
                break;
              case 2:
                return CupertinoPageScaffold(
                    child: TextButton(
                  child: Text('a'),
                  onPressed: () => onPressed(context),
                ));
                break;
              case 3:
                return Favorite();
                break;
              case 4:
                return MyPage();
                break;
            }
            return Home();
          },
        );
      },
    );
  }
}
