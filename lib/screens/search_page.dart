import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> searchPageList = <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black12,
            contentPadding: EdgeInsets.zero,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'スニーカー・ブランド名で検索',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          '検索',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(children: searchPageList),
    );
  }
}
