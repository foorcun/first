// Update the initial state to include menu groups
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/main.dart';

class AppState {
  final List<Restaurant> restaurantList;
  final Restaurant? selectedRestaurant;
  final MenuGroups? menuGroups;

  AppState({required this.restaurantList, this.selectedRestaurant, this.menuGroups});
}


AppState initialState = AppState(
      restaurantList: [
        Restaurant(name: 'Restaurant 1', cuisine: 'Italian'),
        Restaurant(name: 'Restaurant 2', cuisine: 'Mexican'),
        Restaurant(name: 'Restaurant 3', cuisine: 'Chinese'),
      ],
      selectedRestaurant: null,
      // menuGroups: MenuGroups(groups: ['Appetizers', 'Main Course', 'Desserts']),
      menuGroups: MenuGroups(menuGroupId:"me 1" ),
    );


  // 1 AppState class
  // 2 initialState
  // 3 reducer
  // 4 action
  // 5 main.dart icinde void main()
  // 6 widget field properties
  // 7 StoreConnector