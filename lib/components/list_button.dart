import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final String listText;
  final Function onTap;

  ListButton({@required this.listText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
          title: Text(listText),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: onTap),
    );
  }
}
