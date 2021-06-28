import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrdunk_clone/screens/market/market.model.dart';
import 'package:snkrdunk_clone/screens/market/market_apparel.dart';
import 'package:snkrdunk_clone/screens/market/market_sneaker.dart';

class Market extends StatelessWidget {
  final Map<int, Widget> icons = <int, Widget>{
    0: MarketSneaker(),
    1: MarketApparel()
  };

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MarketModel>(
      create: (_) => MarketModel(),
      child: Scaffold(
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
            )
          ],
        ),
        body: Consumer<MarketModel>(
          builder: (context, model, child) {
            return Container(
              color: Colors.white,
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CupertinoSlidingSegmentedControl(
                    groupValue: model.segmentedControlValue,
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
                      model.changeValue(value);
                    },
                  ),
                ),
                Container(
                  child: icons[model.segmentedControlValue],
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
