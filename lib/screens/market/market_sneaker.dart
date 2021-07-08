import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/components/button_market.dart';
import 'package:snkrdunk_clone/components/button_market_ranking.dart';
import 'package:snkrdunk_clone/components/grey_space.dart';
import 'package:snkrdunk_clone/screens/item_page/item_page.dart';
import 'package:snkrdunk_clone/screens/item_page/item_page_aj1bred.dart';
import 'package:snkrdunk_clone/screens/item_page/item_page_aj4.dart';
import 'package:snkrdunk_clone/screens/item_page/item_page_ambush.dart';

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
              ButtonMarketRanking(
                imageRanking: 'images/no_1.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarketRanking(
                imageRanking: 'images/no_2.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/media/20201202011818-0.jpeg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'アンブッシュ × ナイキ ダンク ハイ "ブラック"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPageAmbush()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarketRanking(
                imageRanking: 'images/no_3.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/media/20190729091816-3.jpeg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン4 "ブレッド" 2019',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPageAj4()),
                  );
                },
              ),
              ButtonMarketRanking(
                imageRanking: 'images/no_4.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-001.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "ブレッド (2016)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPageAj1bred()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarketRanking(
                imageRanking: 'images/no_5.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/media/20190729091816-2.jpeg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'トラヴィス・スコット×ナイキ エアジョーダン1 レトロ ハイ OG',
                onPressed: () {
                  //todo: ボタン処理
                },
              ),
              ButtonMarketRanking(
                imageRanking: 'images/no_6.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/840606-192.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン4 レトロ "ホワイト セット (2016)"',
                onPressed: () {
                  //todo: ボタン処理
                },
              ),
              ButtonMarketRanking(
                imageRanking: 'images/no_7.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/media/20200925015300-1.jpeg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'オフホワイト×ナイキ エアラバー ダンク "ブラック/ホワイトグリーン"',
                onPressed: () {
                  //todo: ボタン処理
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarketRanking(
                imageRanking: 'images/no_7.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/media/20200824014804-1.jpeg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ユニオン × ナイキ エアジョーダン4 "GUAVA"',
                onPressed: () {
                  //todo: ボタン処理
                },
              ),
              ButtonMarketRanking(
                imageRanking: 'images/no_7.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-125.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "ブラック トゥ (2016)"',
                onPressed: () {
                  //todo: ボタン処理
                },
              ),
              ButtonMarketRanking(
                imageRanking: 'images/no_7.jpg',
                image:
                    'https://cdn.snkrdunk.com/uploads/media/20200510020035-1.jpeg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ ダンク ロー SP "ホワイト/ユニバーシティレッド"',
                onPressed: () {
                  //todo: ボタン処理
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              ButtonMarket(
                image:
                    'https://cdn.snkrdunk.com/uploads/sneaker-images/555088-101.jpg',
                price: '00,000',
                stock: '99+',
                offer: '99+',
                name: 'ナイキ エアジョーダン1 レトロ "シカゴ (2015)"',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
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
