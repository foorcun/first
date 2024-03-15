import 'dart:async';

import 'package:first/app/features/restorant/domain/Restaurant.dart';
import 'package:first/modules/utils/main/flutter/HttpClientUtil.dart';
import 'package:first/modules/utils/main/flutter/JsonUtil.dart';



class RestaurantService {
  // Simulate fetching restaurant data from a remote server
  Future<List<Restaurant>> fetchRestaurants() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Example list of restaurants
    // List<Restaurant> restaurants = [
    //   Restaurant(name: 'Restaurant 1', cuisine: 'Italian'),
    //   Restaurant(name: 'Restaurant 2', cuisine: 'Chinese'),
    //   Restaurant(name: 'Restaurant 3', cuisine: 'Mexican'),
    // ];

        String value = await HttpClientUtil.get(
        "assets/restaurants.json");
        Map<String, dynamic> json = JsonUtil.fromJsonToMap(value);
        print(json);
        print(json["restaurants"]);
        print(json["restaurants"][0]);

List<Restaurant> restaurants = [];
Restaurant r = Restaurant.fromJson(json["restaurants"][0]);
print("####");
print(r);
restaurants.add(r);
    return restaurants;
  }
}