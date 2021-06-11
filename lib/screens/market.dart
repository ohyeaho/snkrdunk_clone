import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/components/market_apparel.dart';
import 'package:snkrdunk_clone/components/market_sneaker.dart';

class Market extends StatefulWidget {
  const Market({Key key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int segmentedControlValue = 0;

  final Map<int, Widget> icons = <int, Widget>{
    0: MarketSneaker(),
    1: MarketApparel()
  };
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    List<Widget> data = <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: CupertinoSlidingSegmentedControl(
          groupValue: segmentedControlValue,
          backgroundColor: Colors.black12,
          children: <int, Widget>{
            0: Container(
              height: 40,
              child: Center(
                child: Text(
                  'スニーカー',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            1: Text(
              'アパレル',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          },
          onValueChanged: (int value) {
            setState(() {
              segmentedControlValue = value;
            });
          },
        ),
      ),
      Container(
        child: icons[segmentedControlValue],
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Text('ブランドやスニーカー名で検索'),
                ],
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/search_page');
              },
            ),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //todo
                  },
                  icon: Icon(
                    Icons.article_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
        body: ListView(children: data));
  }
}
