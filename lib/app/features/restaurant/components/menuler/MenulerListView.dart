import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';
import 'package:first/app/store/actions/fetchMenuGroupsAction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


class MenulerListView extends StatelessWidget {
  final List<Menu> menuler;

  MenulerListView({required this.menuler});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuler!.length,
      itemBuilder: (context, index) {
        return StoreConnector<AppState, List<Menu>?>(
            converter: (store) => store.state.menuler,
          builder: (context, menuler) {
            return ListTile(
              leading: Icon(Icons.restaurant),
              title: Text(menuler![index].menuId),
              subtitle: Text('${menuler[index].menuAdi}'),
              onTap: () {
                // // Handle tap on the restaurant
                // print('Tapped on ${restaurantList[index].name}');
                // StoreProvider.of<AppState>(context).dispatch(SelectRestaurantAction(restaurantList[index]));
                // Navigator.pushNamed(context, "/menuGroupPage");
              },
            );
          }
        );
      },
    );
  }
}
