// Update the reducer to handle updating menu groups
import 'package:first/app/store/actions/SetInitialMenulerStateAction.dart';
import 'package:first/app/store/actions/UpdateMenuGroupsAction.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/LoadingStateAction.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';
import 'package:first/app/store/actions/SetInitialMenuGroupsStateAction.dart';
import 'package:first/app/store/actions/SetInitialStateAction.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is SelectRestaurantAction) {
    return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: action
            .restaurant, // appReducer, action icindeki datanin state e gecirilmesini saglamakla gorevli
        menuGroups: state.menuGroups,
        isLoading: false);
  }
  if (action is UpdateMenuGroupsAction) {
    return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: action.menuGroups,
        isLoading: false);
  }
  if (action is SetInitialRestaurantStateAction) {
    return AppState(
        restaurantList: action.listRestaurant,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: action.isLoading);
  }
  if(action is LoadingStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: action.isLoading);
  }
    if(action is SetInitialMenuGroupsStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: action.menuGroups,
        isLoading: action.isLoading);
  }
    if(action is SetInitialMenulerStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: state.isLoading,
        menuler: action.menuler);
    }
  return state;
}


