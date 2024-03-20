

import 'package:flutter/material.dart';

class ManuGroupsAppBarWidget extends StatelessWidget {
  const ManuGroupsAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text("MenuGroups Page"),
      );
  }
}