import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';

class ForgetPassword extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    List<Widget> forgetPasswordList = <Widget>[
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'パスワードの再設定',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            SizedBox(height: 20),
            Text('登録メールアドレス'),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  width: double.infinity,
                  color: Colors.grey.shade300,
                ),
                Form(
                  key: formKey,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: '*メールアドレスを入力してください'),
                      EmailValidator(errorText: '正しいメールアドレスを入力してください'),
                    ]),
                    decoration: InputDecoration(
                      labelText: '登録メールアドレスを入力',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color(0xFFD1D1D1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: FittedBox(
                child: Text('メールアドレス宛へパスワードの再設定用URLをお送りします。'),
              ),
            ),
            FittedBox(
              child: Text('メールに記載されたURLからパスワードの再設定へ進んでください。'),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                child: Text(
                  'パスワードの再設定メールを送る',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Colors.black,
                ),
                onPressed: () async {
                  if (formKey.currentState.validate()) {
                    bool result = await context
                        .read<AuthenticationService>()
                        .sendPasswordResetEmail(email: emailController.text);
                    if (result == true) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext dialogContext) {
                          return CupertinoAlertDialog(
                            title: Text('パスワード再設定メールを送信しました'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('完了'),
                                onPressed: () {
                                  Navigator.pop(dialogContext);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      print('error');
                    }
                  }
                },
              ),
            )
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'パスワードの再設定',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(children: forgetPasswordList),
    );
  }
}
