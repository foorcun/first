import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:flutter/material.dart';


class MenuGroupCenterPage extends StatelessWidget {
  final Future<MenuGroup> menuGroupFuture;

  const MenuGroupCenterPage({Key? key, required this.menuGroupFuture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MenuGroup>(
      future: menuGroupFuture,
      builder: (context, AsyncSnapshot<MenuGroup> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Loading..."),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Error"),
            ),
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.data!.menuGroupId),
            ),
            body: Center(
              child: Text(
                snapshot.data!.menuGroupId,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          );
        }
      },
    );
  }
}