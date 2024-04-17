// Update the initial state to include menu groups
import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';

class AppState {
  final List<Restaurant> restaurantList; // qr gelince tum Restoran table ini almamiza gerek kalmayacak.
  final Restaurant? selectedRestaurant;
  // final List<MenuGroup>? menuGroupsList;
  final MenuGroups? menuGroups;
  final bool isLoading;
  final List<Menu>? menuler;

  AppState({required this.restaurantList, this.selectedRestaurant,this.menuGroups, required this.isLoading, this.menuler});
}


AppState initialState = AppState(
      // restaurantList: [
      //   Restaurant(name: 'Restaurant 1', cuisine: 'Italian'),
      //   Restaurant(name: 'Restaurant 2', cuisine: 'Mexican'),
      //   Restaurant(name: 'Restaurant 3', cuisine: 'Chinese'),
      // ],
      restaurantList: [],
      selectedRestaurant: null,
      // menuGroups: MenuGroups(groups: ['Appetizers', 'Main Course', 'Desserts']),
      menuGroups: null,
      isLoading: false,
      menuler: null,
    );


  // 1 AppState class
  // 2 initialState
  // 3 reducer
  // 4 action
  // 5 main.dart icinde void main()
  // 6 widget field properties
  // 7 StoreConnector
  // 7-a converter: (store) => store.state.selectedRestaurant
  // 7-b dispatch() iki tipi var bi store.dispatch bi de StoreProvider.of<AppState>(context).dispatch
