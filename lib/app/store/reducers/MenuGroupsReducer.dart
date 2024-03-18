import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/GetMenuGroupsAction.dart';

MenuGroups? getMenuGroupsReducer(AppState state, dynamic action) {
  if (action is GetMenuGroupsAction) {
  return state.menuGroupsList?.firstWhere((element) => element.menuGroupsId == action.selectedRestaurant.menuGroupId);
  }
  return null;
}