// import 'package:first/UpdateMenuGroupsAction.dart';
// import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
// import 'package:first/app/features/restaurant/domain/Restaurant.dart';
// import 'package:first/app/store/AppStore.dart';
// import 'package:first/app/store/actions/FetchRestaurantsInitialStateAction.dart';
// import 'package:first/app/store/actions/SelectRestaurantAction.dart';
// import 'package:first/app/store/reducers/AppReducer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:redux/redux.dart';

// void main() {
//   final store = Store<AppState>(appReducer, initialState: initialState);

//   FetchRestaurantsInitialStateAction.fetchInitialState(store);

//   runApp(FlutterReduxApp(
//     title: 'Flutter Redux Demo',
//     store: store,
//   ));
// }

// // Update the UI to display menu groups
// class FlutterReduxApp extends StatelessWidget {
//   final Store<AppState> store;
//   final String title;

//   FlutterReduxApp({
//     Key? key,
//     required this.store,
//     required this.title,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StoreProvider<AppState>(
//       store: store,
//       child: MaterialApp(
//         theme: ThemeData.dark(),
//         title: title,
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text(title),
//           ),
//           body: Center(
//             child: StoreConnector<AppState, bool>(
//                 converter: (store) => store.state.isLoading,
//                 builder: (context, isLoading) {
//                   return isLoading
//                       ? const CircularProgressIndicator()
//                       : Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             StoreConnector<AppState, Restaurant?>(
//                               converter: (store) =>
//                                   store.state.selectedRestaurant,
//                               builder: (context, selectedRestaurant) {
//                                 return selectedRestaurant != null
//                                     ? Text(
//                                         'Selected Restaurant: ${selectedRestaurant.name}',
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .titleLarge,
//                                       )
//                                     : Text(
//                                         'No restaurant selected.',
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .titleLarge,
//                                       );
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             StoreConnector<AppState, MenuGroups?>(
//                               converter: (store) => store.state.menuGroupsList![0],
//                               builder: (context, menuGroups) {
//                                 return menuGroups != null
//                                     ? Text(menuGroups.menuGroupsId)
//                                     : Container();
//                                 // return menuGroups != null
//                                 //     ? Column(
//                                 //         children: menuGroups.groups.map((group) {
//                                 //           return Text(
//                                 //             group,
//                                 //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                                 //           );
//                                 //         }).toList(),
//                                 //       )
//                                 //     : Container();
//                               },
//                             ),
//                             const SizedBox(height: 20),
//                             Expanded(
//                               child: StoreConnector<AppState, List<Restaurant>>(
//                                 converter: (store) =>
//                                     store.state.restaurantList,
//                                 builder: (context, restaurantList) {
//                                   return ListView.builder(
//                                     itemCount: restaurantList.length,
//                                     itemBuilder: (context, index) {
//                                       final restaurant = restaurantList[index];
//                                       return ListTile(
//                                         title: Text(restaurant.name),
//                                         subtitle: (restaurant.cuisine != null)
//                                             ? Text(restaurant.cuisine!)
//                                             : const Text("-"),
//                                         onTap: () {
//                                           store.dispatch(SelectRestaurantAction(
//                                               restaurant));
//                                         },
//                                       );
//                                     },
//                                   );
//                                 },
//                               ),
//                             ),
//                           ],
//                         );
//                 }),
//           ),
//         ),
//       ),
//     );
//   }
// }
