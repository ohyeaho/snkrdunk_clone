import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/screens/my_page/menu/personal_info_model.dart';
import 'package:snkrdunk_clone/services/cloud_firebase.dart';

class PersonalInfo extends StatelessWidget {
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PersonalInfoModel>(
      create: (_) => PersonalInfoModel(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            '本人情報',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Consumer<PersonalInfoModel>(
          builder: (context, model, child) {
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),

                        /// 本人情報見出し
                        Text(
                          '本人情報',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),

                        /// 性
                        Text('性'),
                        SizedBox(height: 10),
                        Container(
                          child: TextFormField(
                            controller: lastNameController,
                            textInputAction: TextInputAction.next,
                            validator: MultiValidator([
                              RequiredValidator(errorText: '性を入力してください。'),
                            ]),
                            decoration: InputDecoration(
                              hintText: '例)山田',
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide(
                                    color: Colors.blue.shade300, width: 3),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 12.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),

                        /// 名
                        Text('名'),
                        SizedBox(height: 10),
                        Container(
                          child: TextFormField(
                            controller: firstNameController,
                            textInputAction: TextInputAction.next,
                            validator: MultiValidator([
                              RequiredValidator(errorText: '名を入力してください。'),
                            ]),
                            decoration: InputDecoration(
                                hintText: '例)太郎',
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blue.shade300, width: 3),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 12.0)),
                          ),
                        ),
                        SizedBox(height: 15),

                        /// 生年月日
                        Text('生年月日'),
                        SizedBox(height: 10),
                        Container(
                          height: 57,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey.shade200,
                          ),
                          child: TextButton(
                            onPressed: () async {
                              await model.selectDate(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: model.birthday != null
                                      ? Text(
                                          '${model.birthday}',
                                          style: TextStyle(color: Colors.black),
                                        )
                                      : Text(
                                          'タップして生年月日を選択',
                                          style: TextStyle(
                                              color: Colors.grey.shade400),
                                        ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),

                        /// 登録ボタン
                        Container(
                          width: double.infinity,
                          height: 57,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black,
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(primary: Colors.white),
                            onPressed: () async {
                              if (formKey.currentState.validate()) {
                                await UserManage().updatePersonalInfo(
                                  lastNameController.text.trim() +
                                      ' ' +
                                      firstNameController.text.trim(),
                                  model.birthday,
                                  model.age.toString(),
                                );
                              }
                            },
                            child: Text(
                              '登録する',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
