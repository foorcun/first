import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:redux/redux.dart';
import 'package:collection/collection.dart';

MenuGroup? getMenuGroupSelector(
    Store<AppState> store, Restaurant selectedRestaurant) {
  //return store.state.menuGroups;
  return store.state.menuGroups?.menuGroupList?.firstWhereOrNull(
    (element) => element.menuGroupId == selectedRestaurant.menuGroupId,
  );
}
