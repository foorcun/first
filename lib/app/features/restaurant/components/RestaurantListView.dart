import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantListView extends StatelessWidget {
  final List<Restaurant> restaurantList;

  RestaurantListView({required this.restaurantList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: restaurantList!.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.restaurant),
          title: Text(restaurantList[index].name),
          subtitle: Text('Cuisine: ${restaurantList[index].cuisine}'),
          onTap: () {
            // Handle tap on the restaurant
            print('Tapped on ${restaurantList[index].name}');
          },
        );
      },
    );
  }
}
