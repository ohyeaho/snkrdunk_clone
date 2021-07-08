import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPageAj1bred extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> itemPageList = <Widget>[
      Image.network(
        'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-001.jpg',
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NIKE AIR JORDAN 1 RETRO BRED "BANNED" (2016)',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ナイキ エアジョーダン1 レトロ "ブレッド (2016)"',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '¥000,000~',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade600,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.red.shade600),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      '新品',
                      style: TextStyle(
                        color: Colors.red.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.red.shade600),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      'ダブル本物鑑定',
                      style: TextStyle(
                        color: Colors.red.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.red.shade600),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      'クレカ分割可',
                      style: TextStyle(
                        color: Colors.red.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 60,
              child: OutlinedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'サイズ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '選択してください',
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    )
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.grey.shade600,
                  side: BorderSide(color: Colors.grey.shade400),
                  backgroundColor: Colors.grey.shade300,
                ),
                onPressed: () {
                  //todo: ボタン処理
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 5),
                    Text(
                      'お気に入りに登録する',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(0,000人)',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.amber.shade600),
                  backgroundColor: Colors.amber.shade600,
                ),
                onPressed: () {
                  //todo: ボタン処理
                },
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                '値下げをリアルタイムでお届け！',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      //todo: ボタン処理
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Image.asset('images/item_page_icon_1.jpg'),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'W本物鑑定',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      //todo: ボタン処理
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Image.asset('images/item_page_icon_2.jpg'),
                        ),
                        SizedBox(height: 3),
                        Text(
                          '全額補償',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      //todo: ボタン処理
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Image.asset('images/item_page_icon_3.jpg'),
                        ),
                        SizedBox(height: 3),
                        Text(
                          '安心取引',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      //todo: ボタン処理
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Image.asset('images/item_page_icon_4.jpg'),
                        ),
                        SizedBox(height: 3),
                        Text(
                          '新品/未使用',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'NIKE AIR JORDAN 1 RETRO BRED "BANNED" (2016)',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(children: itemPageList),
    );
  }
}
