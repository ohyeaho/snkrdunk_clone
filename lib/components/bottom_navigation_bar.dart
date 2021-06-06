import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snkrdunk_clone/home.dart';
import 'package:snkrdunk_clone/login.dart';
import 'package:snkrdunk_clone/screens/favorite.dart';
import 'package:snkrdunk_clone/screens/market.dart';
import 'package:snkrdunk_clone/screens/media.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/menu.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/profile/profile.dart';
import 'package:snkrdunk_clone/screens/my_page/my_page.dart';
import 'package:snkrdunk_clone/screens/post.dart';
import 'package:snkrdunk_clone/sign_up.dart';

final appRoutes = {
  '/market': (context) => Market(),
  '/my_page': (context) => MyPage(),
  '/menu': (context) => Menu(),
  '/sign_up': (context) => SignUp(),
  '/login': (context) => Login(),
  '/profile': (context) => Profile(),
  '/home': (context) => HomePage(),
};

class Home extends StatelessWidget {
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
              Icons.add_box_outlined,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart),
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
                return Post();
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
