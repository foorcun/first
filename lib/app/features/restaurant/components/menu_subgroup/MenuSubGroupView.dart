import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MenuSubGroupView extends StatelessWidget {
  final MenuSubGroup menuSubGroup;
  const MenuSubGroupView({super.key, required this.menuSubGroup});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(menuSubGroup.menuSubGroupId != null
          ? menuSubGroup.menuSubGroupId!
          : 'No menuSubGroupId found'),
      menuSubGroup.menuItems == null
          ? Text("no munu items found")
          : ListView.builder(
              shrinkWrap: true,
              itemCount: menuSubGroup.menuItems!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.restaurant),
                  title: menuSubGroup.menuItems![index].menuItemId != null
                      ? Text(menuSubGroup.menuItems![index].menuItemId!)
                      : Text('No menu menuItemName found'),
                  subtitle: Text('${menuSubGroup.menuItems![index].menuItemName}'),
                  onTap: () {
                    // // Handle tap on the restaurant
                    // print('Tapped on ${restaurantList[index].name}');
                    // StoreProvider.of<AppState>(context)
                    //     .dispatch(SelectRestaurantAction(restaurantList[index]));
                    // Navigator.pushNamed(context, "/menuGroupPage");
                    Navigator.pushNamed(context, "/menuSelectionPage", arguments: menuSubGroup.menuItems![index]);
                  },
                );
              },
            )
    ]);
  }
}


    // : ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: menuSubGroup.menuItems!.length,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       leading: Icon(Icons.restaurant),
    //       title: menuSubGroup.menuItems![index].menuItemId != null ? Text(menuSubGroup.menuItems![index].menuItemId!): Text('No menu menuItemName found'),
    //       // subtitle: Text('${menuSubGroupList[index].menuler?.length.toString()}'),
    //       onTap: () {
    //         // // Handle tap on the restaurant
    //         // print('Tapped on ${restaurantList[index].name}');
    //         // StoreProvider.of<AppState>(context)
    //         //     .dispatch(SelectRestaurantAction(restaurantList[index]));
    //         // Navigator.pushNamed(context, "/menuGroupPage");
    //       },
    //     );
    //   },
    // );
  
