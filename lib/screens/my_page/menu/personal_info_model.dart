import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PersonalInfoModel extends ChangeNotifier {
  ///生年月日、年齢
  String birthday;
  int age;

  ///日付選択
  Future<void> selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      locale: const Locale('ja'), // 日本語化
      initialDatePickerMode: DatePickerMode.year, // 最初に入力する項目(年)
      initialDate: DateTime.now(), //初期選択日付(今日)
      firstDate: DateTime(DateTime.now().year - 100, DateTime.now().month,
          DateTime.now().day), // 選択可能な、もっとも古い日付（100年前の今日）
      lastDate: DateTime.now(), // 選択可能な、もっとも新しい日付（今日）
      builder: (BuildContext context, Widget child) {
        return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light().copyWith(
                primary: Colors.blue.shade50, // ヘッダーカラー
                onPrimary: Colors.black, // 文字カラー
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.black, // ボタン文字カラー
                ),
              ),
            ),
            child: child);
      },
    );
    final selectedBirthDay = selected;
    final today = DateTime.now();

    var todayMonth = today.month < 10
        ? '0' + '${today.month}'
        : today.month; // 今月が10未満のときは先頭に0を追加
    var todayDay =
        today.day < 10 ? '0' + '${today.day}' : today.day; // 今日が10未満のときは先頭に0を追加
    var birthdayMonth = selectedBirthDay.month < 10
        ? '0' + '${selectedBirthDay.month}'
        : selectedBirthDay.month; // 誕生月が10未満のときは先頭に0を追加
    var birthdayDay = selectedBirthDay.day < 10
        ? '0' + '${selectedBirthDay.day}'
        : selectedBirthDay.day; // 誕生日が10未満のときは先頭に0を追加

    if (selected != null) {
      var td =
          '${today.year}' + '$todayMonth' + '$todayDay'; // 今日の横並び値(yyyyMMDD)
      var bd = '${selectedBirthDay.year}' +
          '$birthdayMonth' +
          '$birthdayDay'; // 誕生日の横並び値(yyyyMMDD)
      var age10000 = int.parse(td) - int.parse(bd);
      var ageBeforeFloor = age10000 / 10000;
      this.age = ageBeforeFloor.floor();
      // this.birthday = (DateFormat.yMMMd('ja')).format(selected); //　生年月日フォーマット変更
      this.birthday = (DateFormat('yyyy/MM/dd')).format(selected);
    }
    notifyListeners();
  }
}
