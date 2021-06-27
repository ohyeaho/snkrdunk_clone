import 'package:flutter/material.dart';

class GreySpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
        color: Colors.black12,
      ),
    );
  }
}
