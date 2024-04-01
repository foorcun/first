import 'package:first/app/features/restaurant/components/menuler/MenulerListView.dart';
import 'package:first/app/features/restaurant/components/retaurant/RestaurantListView.dart';
import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MenulerListViewPage extends StatelessWidget {
  const MenulerListViewPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (store) => store.state.isLoading,
      builder: (context, isLoading) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Menuler Page"),
          ),
          body: isLoading
              ? const Center(child: CircularProgressIndicator())
              : StoreConnector<AppState, List<Menu>?>(
                  converter: (store) => store.state.menuler,
                  builder: (context, menuler) {
                  return  menuler != null ? MenulerListView(menuler: menuler!) : Text("Loading..");
                    // return MenulerListView(menuler: menuler!);
                  }),
        );
      },
    );
  }
}
