import 'package:first/app/features/restaurant/MenuGroupsService.dart';
import 'package:first/app/features/restaurant/components/menu_group/MenuGroupCenterView.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:collection/collection.dart';

class MenuGroupPage extends StatelessWidget {
  const MenuGroupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
        converter: (store) => store.state.isLoading,
        builder: (context, isLoading) {
          return isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : StoreConnector<AppState, Restaurant>(
                  converter: (store) => store.state.selectedRestaurant!,
                  builder: (context, selectedRestaurant) {
                    return Scaffold(
                      appBar: AppBar(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary,
                        title: Text(selectedRestaurant.name + " Page"),
                      ),
                      body: Center(
                        // child: MenuGroupCenterView(menuGroupFuture: MenuGroupService().fetchMenuGroup(),),
                        child: StoreConnector<AppState, List<MenuGroups>>(
                            converter: (store) => store.state.menuGroupsList!,
                            builder: (context, menuGroupsList) {
                              MenuGroups? mG = menuGroupsList.firstWhereOrNull(
                                (element) =>
                                    element.menuGroupId ==
                                    selectedRestaurant.menuGroupId,
                              );
                              return mG != null
                                  ? Text(mG.menuGroupId)
                                  : Text("no data");
                              //  var v =  menuGroupsList.firstWhere((element) =>
                              //       element.menuGroupId == selectedRestaurant.menuGroupId);
                              //  return  Text(menuGroupsList[0].menuGroupId);
                              // return Text(v.menuGroupId);
                            }),
                      ),
                    );
                  });
        });
  }
}
