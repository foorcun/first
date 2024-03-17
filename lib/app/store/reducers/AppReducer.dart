// Update the reducer to handle updating menu groups
import 'package:first/UpdateMenuGroupsAction.dart';
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
        menuGroupsList: state.menuGroupsList,
        isLoading: false);
  }
  if (action is UpdateMenuGroupsAction) {
    return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroupsList: action.menuGroupsList,
        isLoading: false);
  }
  if (action is SetInitialRestaurantStateAction) {
    return AppState(
        restaurantList: action.listRestaurant,
        selectedRestaurant: state.selectedRestaurant,
        menuGroupsList: state.menuGroupsList,
        isLoading: action.isLoading);
  }
  if(action is LoadingStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroupsList: state.menuGroupsList,
        isLoading: action.isLoading);
  }
    if(action is SetInitialMenuGroupsStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroupsList: action.listMenuGroups,
        isLoading: action.isLoading);
  }
  return state;
}


