import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/GetMenuGroupsAction.dart';
import 'package:collection/collection.dart';

MenuGroup? getMenuGroupReducer(AppState state, dynamic action) {
  if (action is GetMenuGroupsAction) {
  return state.menuGroups?.menuGroupList?.firstWhereOrNull((element) => element.menuGroupId == action.selectedRestaurant.menuGroupId);
  }
  return null;
}