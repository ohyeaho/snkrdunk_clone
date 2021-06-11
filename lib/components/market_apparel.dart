import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketApparel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            '🔥人気沸騰中',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.looks_one,
                        color: Colors.amber,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.looks_two),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.looks_3,
                        color: Colors.brown,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.looks_4,
                        color: Colors.black,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.looks_5,
                        color: Colors.black,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.looks_6,
                        color: Colors.black,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.filter_7,
                        color: Colors.black,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.filter_8,
                        color: Colors.black,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.filter_9,
                        color: Colors.black,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '10',
                      ),
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '新発売スニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '最近チェックしたスニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '最安値更新スニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '定価以下スニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '販売前スニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '定番スニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
              color: Colors.black12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Text(
              '新着中古スニーカー',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    //todo: ボタン処理
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tshirt,
                        size: 80,
                      ),
                      Text('¥00000')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: height * 0.09,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 0,
              right: 20,
              bottom: 10,
            ),
            child: OutlinedButton(
              child: Text(
                'もっと見る',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                //todo: ボタン処理
                // Navigator.pushNamed(context, '/menu');
              },
            ),
          ),
        ),
      ],
    );
  }
}
