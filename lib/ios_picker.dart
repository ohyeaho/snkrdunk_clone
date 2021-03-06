import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosPicker extends StatefulWidget {
  final String initialValue;

  const IosPicker({Key key, this.initialValue}) : super(key: key);
  @override
  Introduce createState() => Introduce();
}

class Introduce extends State<IosPicker> {
  String inputValue = "";

  var selectedIndex = 0;
  String initial;
  Introduce({this.initial});

  @override
  Widget build(BuildContext context) {
    return iosPicker();
  }

  String _selectedSize = "選択してください";
  String _initialSize = "選択";
  Widget _pickerAge(String str) {
    return Text(
      str,
      style: const TextStyle(fontSize: 32),
    );
  }

  Widget iosPicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "マイサイズ(スニーカーのサイズ)",
        ),
        Container(
          child: CupertinoButton(
            onPressed: () {},
            child: OutlinedButton(
              child: Text("$_initialSize"),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CupertinoButton(
                                child: Text("戻る"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              CupertinoButton(
                                child: Text("決定"),
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    _initialSize = _selectedSize;
                                  });
                                },
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            child: CupertinoPicker(
                              itemExtent: 40,
                              children: sizeList.map(_pickerAge).toList(),
                              onSelectedItemChanged: _onSelectedItemChangedSize,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  void _onSelectedItemChangedSize(int index) {
    setState(() {
      _selectedSize = sizeList[index];
    });
  }
}

final List<String> sizeList = [
  '23.0cm',
  '23.5cm',
  '24.0cm',
  '24.5cm',
  '25.0cm',
  '25.5cm',
  '26.0cm',
  '26.5cm',
  '27.0cm',
  '27.5cm',
  '28.0cm',
  '28.5cm',
  '29.0cm',
  '29.5cm',
  '30.0cm',
  '30.5cm',
  '31.0cm',
  '31.5cm',
  '32.0cm',
];
