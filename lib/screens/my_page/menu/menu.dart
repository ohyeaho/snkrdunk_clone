import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/components/list_button.dart';
import 'package:snkrdunk_clone/components/list_header.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> menuList = <Widget>[
      ListHeader(listHeaderTitle: 'アカウント'),
      ListButton(
        listText: 'プロフィール',
        onTap: () {
          Navigator.pushNamed(context, '/profile');
        },
      ),
      ListHeader(listHeaderTitle: 'クーポン'),
      ListButton(
        listText: '友達招待で10%OFF(最大¥4,000)クーポンGET',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '保有クーポン・コード入力',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListHeader(listHeaderTitle: '個人情報'),
      ListButton(
        listText: '本人情報',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: 'お届け先・発送元住所',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '電話番号',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '支払い方法',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListHeader(listHeaderTitle: '設定'),
      ListButton(
        listText: 'マイコレクション管理',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '通知設定',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: 'ミュート管理',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '売上・振込申請',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListHeader(listHeaderTitle: 'ガイド・ヘルプ'),
      ListButton(
        listText: '取引の流れ',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '商品のガイドライン',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '梱包・発送のガイドライン',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: 'スニーカー鑑定について',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '偽造品撲滅への取り組み',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '全額補償について',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '支払い・クーポンについて',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '利用料・配送料について',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '売上金・振込について',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListHeader(listHeaderTitle: 'その他'),
      ListButton(
        listText: '運営からのお知らせ',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: 'よくある質問',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '特定商取引に関する表記',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '利用規約',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: 'プライバシーポリシー',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: 'お問い合わせ',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
      ListButton(
        listText: '運営会社',
        onTap: () {
          //todo: ボタン処理
          // Navigator.pushNamed(context, '/profile');
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'メニュー',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(children: menuList),
    );
  }
}
