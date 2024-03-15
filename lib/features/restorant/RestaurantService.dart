import 'dart:async';

import 'package:first/features/restorant/domain/Restaurant.dart';



class RestaurantService {
  // Simulate fetching restaurant data from a remote server
  Future<List<Restaurant>> fetchRestaurants() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Example list of restaurants
    List<Restaurant> restaurants = [
      Restaurant(name: 'Restaurant 1', cuisine: 'Italian'),
      Restaurant(name: 'Restaurant 2', cuisine: 'Chinese'),
      Restaurant(name: 'Restaurant 3', cuisine: 'Mexican'),
    ];

    return restaurants;
  }
}