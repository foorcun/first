import 'package:first/app/features/restaurant/domain/CartItem.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';
import 'package:first/app/store/actions/candidate_cart_item_action.dart';
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
                return StoreConnector<AppState,Restaurant?>(
                  converter: (store) => store.state.selectedRestaurant,
                  builder: (context, selectedRestaurant) {
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
                        // print(CartItem(menuItem: menuSubGroup.menuItems![index], quantity: 2).quantity);
                // StoreProvider.of<AppState>(context).dispatch(SelectRestaurantAction(selectedRestaurant!));
                
                  // print(CartItem(menuItem: menuSubGroup.menuItems![index], quantity: 2).quantity);
                        print("StoreProvider oncesi");
                        StoreProvider.of<AppState>(context).dispatch(CandidateCartItemAction(CartItem(menuItem: menuSubGroup.menuItems![index], quantity: 1)));
                        Navigator.pushNamed(context, "/menuSelectionPage");
                      },
                    );
                  }
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
  
