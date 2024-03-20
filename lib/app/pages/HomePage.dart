import 'package:first/app/features/restaurant/components/retaurant/RestaurantListView.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (store) => store.state.isLoading,
      builder: (context, isLoading) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Home Page"),
          ),
          body: isLoading
              ? const Center(child: CircularProgressIndicator())
              : StoreConnector<AppState, List<Restaurant>>(
                  converter: (store) => store.state.restaurantList,
                  builder: (context, restaurantList) {
                    return RestaurantListView(restaurantList: restaurantList);
                  }),
        );
      },
    );
  }
}
