import 'package:first/app/features/restaurant/components/menu_subgroup/MenuSubGroupListView.dart';
import 'package:first/app/features/restaurant/components/menu_subgroup/MenuSubGroupView.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
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

      appBar: const MenuGroupPageAppBar(),
      body: StoreConnector<AppState, bool>(
          converter: (store) => store.state.isLoading,
          builder: (context, isLoading) {
            return isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    // children: [MyAggregatorWidget(), MenuGroupListView()],
                    children: [
                      // CoreListViewWidget(
                      //   listString: dummyListString,
                      // ),
                      MenuGroupWidgetWithAppStore(),
                    ],
                  );
          }),
    );
  }
}

      class MenuGroupPageAppBar extends StatelessWidget implements PreferredSizeWidget {
        const MenuGroupPageAppBar({
          Key? key,
        }) : super(key: key);

        @override
        Size get preferredSize => Size.fromHeight(kToolbarHeight);

        @override
        Widget build(BuildContext context) {
          return StoreConnector<AppState, Restaurant?>(
            converter: (store) => store.state.selectedRestaurant,
            builder: (context, selectedRestaurant) {
              return AppBar(
                title:  Text(selectedRestaurant!.name),
              );
            }
          );
        }
      }

      // ...

class MenuGroupWidgetWithAppStore extends StatelessWidget {
  const MenuGroupWidgetWithAppStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Restaurant?>(
      converter: (store) => store.state.selectedRestaurant,
      builder: (context, selectedRestaurant) {
        // return MenuGroupWidget(
        //   menuGroup: dummyListMenuGroup[0],
        // );
        // return Text(selectedRestaurant!.menu != null ? selectedRestaurant.menu!.menuId : 'No menu found');
        // return Text(selectedRestaurant!.menu != null ? selectedRestaurant.menu!.menuSubGroups!.length.toString() : 'No menu found');
        return selectedRestaurant!.menu != null ? MenuSubGroupLIstView(menuSubGroups : selectedRestaurant.menu!.menuSubGroups!) : Text('No menu found');
      }
    );
  }
}

class MenuSubGroupLIstView extends StatelessWidget {
  const MenuSubGroupLIstView({
    super.key,
    required this.menuSubGroups
  });
  final List<MenuSubGroup> menuSubGroups;

  @override
  Widget build(BuildContext context) {
    // return Text(menuSubGroups.length.toString());
    return SingleChildScrollView(child: ListView.builder(
      shrinkWrap: true,
      itemCount: menuSubGroups.length,
      itemBuilder:(context,index)=> MenuSubGroupView(menuSubGroup: menuSubGroups[index],)));
    
  }
}
