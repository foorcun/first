// Update the reducer to handle updating menu groups
import 'package:first/UpdateMenuGroupsAction.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is SelectRestaurantAction) {
    return AppState(
      restaurantList: state.restaurantList,
      selectedRestaurant: action.restaurant,
      menuGroups: state.menuGroups,
    );
  }
  if (action is UpdateMenuGroupsAction) {
    return AppState(
      restaurantList: state.restaurantList,
      selectedRestaurant: state.selectedRestaurant,
      menuGroups: action.menuGroups,
    );
  }
  return state;
}