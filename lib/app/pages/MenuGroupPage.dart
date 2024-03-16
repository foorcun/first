import 'package:first/app/features/restaurant/MenuGroupService.dart';
import 'package:first/app/features/restaurant/components/menu_group/MenuGroupCenterView.dart';
import 'package:flutter/material.dart';

class MenuGroupPage extends StatelessWidget {
  const MenuGroupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("MenuGroup Page"),
      ),
      body: Center(
        child: MenuGroupCenterView(menuGroupFuture: MenuGroupService().fetchMenuGroup(),),
      ),
    );
  }
}
