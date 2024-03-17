import 'package:first/app/features/restaurant/MenuGroupService.dart';
import 'package:first/app/features/restaurant/components/menu_group/MenuGroupCenterView.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MenuGroupPage extends StatelessWidget {
  const MenuGroupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: StoreConnector<AppState,Restaurant>(
          converter: (store) => store.state.selectedRestaurant!,
          builder: (context, selectedRestaurant) {
            return  Text(selectedRestaurant.name + " Page");
          }
        ),
      ),
      body: Center(
        child: MenuGroupCenterView(menuGroupFuture: MenuGroupService().fetchMenuGroup(),),
      ),
    );
  }
}
