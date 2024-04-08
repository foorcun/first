import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/features/restaurant/services/MenuGroupsService.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MenuGroupListView extends StatelessWidget {
  // final MenuGroups menuGroups;

  MenuGroupListView();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Restaurant?>(
        converter: (store) => store.state.selectedRestaurant,
        builder: (context, selectedRestaurant) {
          // MenuGroup menuGroup = await MenuGroupsService().findMenuGroup(selectedRestaurant?.menuGroupId) ;
          return selectedRestaurant == null
              ? CircularProgressIndicator()
              : ListTile(
                  leading: Icon(Icons.restaurant),
                  title: Text(selectedRestaurant.name),
                  subtitle: MenuGroupFutureBuilder(selectedRestaurant),
                  onTap: () {
                    // Handle tap on the restaurant
                    // Navigator.pushNamed(context, "/menuGroupPage");
                  },
                );
        });
  }

  FutureBuilder<MenuGroup> MenuGroupFutureBuilder(
      Restaurant selectedRestaurant) {
    return FutureBuilder(
      future: MenuGroupsService().findMenuGroup(selectedRestaurant.menuGroupId),
      builder: (context, snapshot) =>
          snapshot.connectionState == ConnectionState.waiting
              ? Center(child: CircularProgressIndicator())
              : Text(snapshot.data!.menuGroupId),
    );
  }
}
