import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:redux/redux.dart';
import 'package:collection/collection.dart';

MenuGroups? getMenuGroupsSelector(
    Store<AppState> store, Restaurant selectedRestaurant) {
  //return store.state.menuGroups;
  return store.state.menuGroupsList?.firstWhereOrNull(
    (element) => element.menuGroupsId == selectedRestaurant.menuGroupId,
  );
}
