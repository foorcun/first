// Define a Restaurant class
import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';

class Restaurant {
  final String name;
  // final String? cuisine;
  // final String? menuId;
  final Menu? menu;

  // Restaurant({required this.name, required this.cuisine, this.menuId, this.menu});
  Restaurant({required this.name, this.menu});

  Restaurant.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String,
    // cuisine = json['cuisine'] as String?,
    // menuId = json['menuId'] as String?,
    
    menu =json['menu'] == null ? null : Menu.fromJson(json['menu'] as Map<String, dynamic>);
}
