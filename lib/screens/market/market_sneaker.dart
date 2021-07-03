import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/components/grey_space.dart';

class MarketSneaker extends StatelessWidget {
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/media/20201202011818-0.jpeg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/media/20190729091816-3.jpeg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-001.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/media/20190729091816-2.jpeg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/840606-192.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/media/20200925015300-1.jpeg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/media/20200824014804-1.jpeg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-125.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/media/20200510020035-1.jpeg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
        GreySpace(),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
                      Image.network(
                          'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg'),
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
