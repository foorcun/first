import 'package:first/app/features/restorant/domain/Restaurant.dart';
import 'package:flutter/material.dart';


class RestaurantListView extends StatelessWidget {
  final Future<List<Restaurant>> futureRestaurants;

  RestaurantListView({required this.futureRestaurants});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Restaurant>>(
      future: futureRestaurants,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(), // Show loading indicator while data is loading
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'), // Show error message if data fetching fails
          );
        } else {
          // Data has been successfully fetched
          List<Restaurant>? restaurants = snapshot.data;
          return ListView.builder(
            itemCount: restaurants!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.restaurant),
                title: Text(restaurants[index].name),
                subtitle: Text('Cuisine: ${restaurants[index].cuisine}'),
                onTap: () {
                  // Handle tap on the restaurant
                  print('Tapped on ${restaurants[index].name}');
                },
              );
            },
          );
        }
      },
    );
  }
}