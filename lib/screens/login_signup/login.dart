import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            'ログイン',
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
                    'ログイン',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/sign_up");
                    },
                    child: Text(
                      '会員登録(無料)',
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
                top: 20,
              ),
              width: 300,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
                controller: emailController,
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
              height: 50,
              width: 300,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                  FirebaseAuth.instance.authStateChanges().listen(
                    (User user) {
                      if (user != null) {
                        Navigator.pushReplacementNamed(context, "/my_page");
                      }
                    },
                  );
                },
                child: Text(
                  'ログイン',
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
                  Navigator.pushReplacementNamed(context, "/sign_up");
                },
                minWidth: 0,
                height: 0,
                padding: EdgeInsets.zero,
                child: Text(
                  '新規会員登録(無料)はこちら',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4739F0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  //todo
                },
                minWidth: 0,
                height: 0,
                padding: EdgeInsets.zero,
                child: Text(
                  'パスワードを忘れた方',
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
