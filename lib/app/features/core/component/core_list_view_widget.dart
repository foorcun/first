import 'package:flutter/material.dart';

class CoreListViewWidget extends StatelessWidget {
  List<String> listString;
  CoreListViewWidget({super.key, required this.listString});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listString.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.abc),
          title: Text(listString[index]),
        );
      },
    );
  }
}