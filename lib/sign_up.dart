import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class SignUp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // String name = '';

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('エラー'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(dialogContext);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Title(
          child: Text(
            '会員登録(無料)',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Colors.blueAccent,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: height * 0.02,
                left: width * 0.04,
                right: width * 0.04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '会員登録(無料)',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: Text(
                      'ログイン',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 300,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'ユーザー名',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color(0xFFD1D1D1),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              width: 300,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'メールアドレス',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color(0xFFD1D1D1),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              width: 300,
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'パスワード',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Color(0xFFD1D1D1),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25.0,
              ),
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  Navigator.pushNamed(context, "/signup_policy");
                },
                minWidth: 0,
                height: 0,
                padding: EdgeInsets.zero,
                child: Text(
                  '下の会員登録ボタンを押すことで、\n利用規約・プライバシーポリシーに同意したことになります。',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signUp(
                        name: nameController.text.trim(),
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                  FirebaseAuth.instance.authStateChanges().listen((User user) {
                    if (user != null) {
                      Navigator.pushReplacementNamed(context, "/menu");
                      UserManage().setUserAccount(
                          name: nameController.text.trim(),
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                    } else {
                      _showErrorDialog(context);
                    }
                  });
                },
                child: Text(
                  '会員登録(無料)',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25.0,
              ),
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/login");
                },
                minWidth: 0,
                height: 0,
                padding: EdgeInsets.zero,
                child: Text(
                  '既に登録済みの方はこちら',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4739F0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
