import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:flutter/material.dart';

class MenuGroupCenterView extends StatelessWidget {
  final Future<MenuGroup> menuGroupFuture;

  const MenuGroupCenterView({Key? key, required this.menuGroupFuture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MenuGroup>(
      future: menuGroupFuture,
      builder: (context, AsyncSnapshot<MenuGroup> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
           child: Text("Error: ${snapshot.error}"),
          );
        } else {
          return 
             Center(
              child: Text(
                snapshot.data!.menuGroupId,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          );
        }
      },
    );
  }
}
