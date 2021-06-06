import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  final String listHeaderTitle;

  ListHeader({@required this.listHeaderTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          listHeaderTitle,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
    );
  }
}
