import 'package:flutter/material.dart';

class MySecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListTile(
          title: Text('Data 1'),
        ),
        ListTile(
          title: Text('Data 2'),
        ),
      ],
    );
  }
}