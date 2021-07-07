import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/services/authentication_service.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class SignUp extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
        child: Form(
          key: formKey,
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
                  controller: userNameController,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator([
                    RequiredValidator(errorText: '*ユーザー名を入力してください'),
                    PatternValidator(r'^[^\s]*$', errorText: '空文字は使えません'),
                    MaxLengthValidator(20, errorText: '20文字以内で入力してください'),
                  ]),
                  decoration: InputDecoration(
                    labelText: 'ユーザー名',
                    hintText: '20文字以内(後で変更可)',
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
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator([
                    RequiredValidator(errorText: '*メールアドレスを入力してください'),
                    EmailValidator(errorText: '正しいメールアドレスを入力してください'),
                  ]),
                  decoration: InputDecoration(
                    labelText: 'メールアドレス',
                    hintText: '例)mail@address.com',
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
                  validator: MultiValidator([
                    RequiredValidator(errorText: '*パスワードを入力してください'),
                    MinLengthValidator(8, errorText: 'パスワードは8文字以上で入力してください'),
                    MaxLengthValidator(30, errorText: 'パスワードは30文字以内で入力してください'),
                    PatternValidator(
                        r'(?=.*?[a-z])(?=.*?\d)[a-z\d](?=.*?[0-9])',
                        errorText: '半角英数字の混合で入力してください'),
                  ]),
                  decoration: InputDecoration(
                    labelText: 'パスワード',
                    hintText: '半角英数字の混合で8文字以上',
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
                  onPressed: () async {
                    if (formKey.currentState.validate()) {
                      dynamic result =
                          await context.read<AuthenticationService>().signUp(
                                userName: userNameController.text.trim(),
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              );
                      if (result == true) {
                        FirebaseAuth.instance
                            .authStateChanges()
                            .listen((User user) {
                          if (user != null) {
                            Navigator.pushReplacementNamed(context, "/my_page");
                            UserManage().setUserAccount(
                              userName: userNameController.text.trim(),
                            );
                          }
                        });
                      } else if (result == 'error:exist') {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext dialogContext) {
                            return CupertinoAlertDialog(
                              title: Text('エラー'),
                              content: Text('このメールアドレスはすでに使用されています'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('戻る'),
                                  onPressed: () {
                                    Navigator.pop(dialogContext);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
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
      ),
    );
  }
}
