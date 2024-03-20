// import 'package:first/app/features/restaurant/MenuGroupsService.dart';
// import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
// import 'package:first/app/store/AppStore.dart';
// import 'package:first/app/store/actions/LoadingStateAction.dart';
// import 'package:first/app/store/actions/SetInitialMenuGroupsStateAction.dart';
// import 'package:redux/redux.dart';


// class FetchRestaurantsInitialStateAction{


// static void fetchMenuGroupsAction(Store<AppState> store) {
//   store.dispatch(LoadingStateAction());

//   // Simulate an async operation (e.g., fetching data from an API)
//   print("##### fetchInitialState artifical Delay basladi");
//   Future.delayed(Duration(seconds: 1), () async {
//     // Once the async operation completes, dispatch another action to update the store
//     MenuGroups menuGroups = await MenuGroupsService().fetchMenuGroups();

//     store.dispatch(SetInitialMenuGroupsStateAction(menuGroups));
//   });
// }


// }
