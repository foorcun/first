import 'dart:async';
import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/services/MenuGroupsService.dart';
import 'package:first/app/features/restaurant/services/MenulerService.dart';
import 'package:first/app/features/restaurant/services/RestaurantService.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/LoadingStateAction.dart';
import 'package:first/app/store/actions/SetInitialMenuGroupsStateAction.dart';
import 'package:first/app/store/actions/SetInitialMenulerStateAction.dart';
import 'package:first/app/store/actions/SetInitialStateAction.dart';
import 'package:redux/redux.dart';

// Define action class for async operation
class FetchRestaurantsInitialStateAction {
// Action creator function to dispatch the async action
  static void fetchInitialState(Store<AppState> store) {
    store.dispatch(LoadingStateAction());


    // Simulate an async operation (e.g., fetching data from an API)
    print("##### artifical Delay basladi");
    Future.delayed(Duration(seconds: 1), () async {
      // Once the async operation completes, dispatch another action to update the store
      List<Restaurant> listRestaurant =
          await RestaurantService().fetchRestaurants();
      store.dispatch(SetInitialRestaurantStateAction(listRestaurant));

      MenuGroups menuGroups =
          await MenuGroupsService().fetchMenuGroups();
      
      store.dispatch(SetInitialMenuGroupsStateAction(menuGroups)); 

      List<Menu> menuler = await MenulerService().fetchMenu();
      store.dispatch(SetInitialMenulerStateAction(menuler));

    });

  }
}

// 1- Action tanımla


// 1-A Sadece data action

// 2-B Action with methods

// 3- store.dispatch() 