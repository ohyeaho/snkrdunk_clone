import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/home.dart';
import 'package:snkrdunk_clone/login.dart';
import 'package:snkrdunk_clone/screens/market.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/menu.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/profile/profile.dart';
import 'package:snkrdunk_clone/screens/my_page/my_page.dart';
import 'package:snkrdunk_clone/screens/search_page.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';
import 'package:snkrdunk_clone/sign_up.dart';

import 'components/bottom_navigation_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance)),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authState,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SNKRDUNK',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
        routes: {
          '/market': (context) => Market(),
          '/my_page': (context) => MyPage(),
          '/menu': (context) => Menu(),
          '/sign_up': (context) => SignUp(),
          '/login': (context) => Login(),
          '/profile': (context) => Profile(),
          '/home': (context) => HomePage(),
          '/search_page': (context) => SearchPage(),
        },
      ),
    );
  }
}

// class AuthenticationWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User>();
//     if (firebaseUser != null) {
//       return MyPage();
//     }
//     return Login();
//   }
// }
