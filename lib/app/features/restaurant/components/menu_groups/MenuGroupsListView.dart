import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


class MenuGroupsListView extends StatelessWidget {

  const MenuGroupsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MenuGroups?>(
      converter: (store) => store.state.menuGroups,
      builder: (context, menuGroups){
        return menuGroups != null
            ? Text("MenuGroups table inda " +  menuGroups.menuGroupList!.length.toString() + " adet MenuGroup object var")
            : Text("no dataa");
      }, 
);
    // return ListView.builder(
    //   itemCount: menuGroups.menuGroupList!.length,
    //   itemBuilder: (context, index) {
    //     return StoreConnector<AppState, List<Restaurant>>(
    //         converter: (store) => store.state.restaurantList,
    //       builder: (context,selectedRestaurant) {
    //         return ListTile(
    //           leading: Icon(Icons.restaurant),
    //           title: Text(restaurantList[index].name),
    //           subtitle: Text('Cuisine: ${restaurantList[index].cuisine}'),
    //           onTap: () {
    //             // Handle tap on the restaurant
    //             print('Tapped on ${restaurantList[index].name}');
    //             StoreProvider.of<AppState>(context).dispatch(SelectRestaurantAction(restaurantList[index]));
    //             Navigator.pushNamed(context, "/menuGroupPage");
    //           },
    //         );
    //       }
    //     );
    //   },
    // );
  }
}
