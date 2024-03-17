import 'dart:async';
import 'package:first/app/features/restaurant/MenuGroupsService.dart';
import 'package:first/app/features/restaurant/RestaurantService.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/LoadingStateAction.dart';
import 'package:first/app/store/actions/SetInitialMenuGroupsStateAction.dart';
import 'package:first/app/store/actions/SetInitialStateAction.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

// Define action class for async operation
class FetchRestaurantsInitialStateAction {
// Action creator function to dispatch the async action
  static void fetchInitialState(Store<AppState> store) {
    store.dispatch(LoadingStateAction());

    store.dispatch(FetchRestaurantsInitialStateAction());

    // Simulate an async operation (e.g., fetching data from an API)
    Future.delayed(Duration(seconds: 2), () async {
      // Once the async operation completes, dispatch another action to update the store
      List<Restaurant> listRestaurant =
          await RestaurantService().fetchRestaurants();
      store.dispatch(SetInitialRestaurantStateAction(listRestaurant));

      List<MenuGroups> listMenuGroups =
          await MenuGroupsService().fetchMenuGroups();
      
      store.dispatch(SetInitialMenuGroupsStateAction(listMenuGroups)); 
    });

  }
}

// 1- Action tanımla


// 1-A Sadece data action

// 2-B Action with methods

// 3- store.dispatch() 