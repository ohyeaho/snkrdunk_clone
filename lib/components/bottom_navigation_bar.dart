import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/home.dart';
import 'package:snkrdunk_clone/screens/favorite.dart';
import 'package:snkrdunk_clone/screens/login_signup/login.dart';
import 'package:snkrdunk_clone/screens/login_signup/sign_up.dart';
import 'package:snkrdunk_clone/screens/market/market.dart';
import 'package:snkrdunk_clone/screens/media/media.dart';
import 'package:snkrdunk_clone/screens/media/tab/media_page_new_post.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/menu.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/profile/profile.dart';
import 'package:snkrdunk_clone/screens/my_page/my_page.dart';
import 'package:snkrdunk_clone/screens/post/new_post.dart';
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
  '/media': (context) => Media(),
  '/media_page_new_post': (context) => MediaPageNewPost(),
};

class Home extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    void onPressed(BuildContext context) async {
      final Size size = MediaQuery.of(context).size;
      double height = size.height;
      await showModalBottomSheet(
        useRootNavigator: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
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
                        '????????????????????????????????????????????????\n??????????????????????????????????????????????????????',
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
                          //todo: ???????????????
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
                              '??????????????????????????????',
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
                          //todo: ???????????????
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
                              '???????????????????????????',
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
                              '??????????????????????????????',
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
                  SizedBox(height: height * 0.01)
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '???????????????',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: '????????????',
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () => onPressed(context),
                    icon: Icon(Icons.add_circle_outline))),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: '???????????????',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: '???????????????',
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
                  return CupertinoTabView(
                    builder: (context) {
                      return CupertinoPageScaffold(
                          child: IconButton(
                              onPressed: () => onPressed(context),
                              icon: Icon(Icons.add_circle_outline)));
                    },
                  );
                  break;
                case 3:
                  return Favorite();
                  break;
                case 4:
                  return MyPageAuth();
                  break;
              }
              return Home();
            },
          );
        },
      ),
    );
  }
}
