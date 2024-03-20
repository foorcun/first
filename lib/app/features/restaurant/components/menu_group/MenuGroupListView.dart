// import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
// import 'package:first/app/features/restaurant/domain/Restaurant.dart';
// import 'package:first/app/store/AppStore.dart';
// import 'package:first/app/store/actions/SelectRestaurantAction.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:redux/redux.dart';


// class MenuGroupListView extends StatelessWidget {
//   final MenuGroups menuGroups;

//   MenuGroupListView({required this.menuGroups});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: restaurantList!.length,
//       itemBuilder: (context, index) {
//         return StoreConnector<AppState, List<Restaurant>>(
//             converter: (store) => store.state.restaurantList,
//           builder: (context,selectedRestaurant) {
//             return ListTile(
//               leading: Icon(Icons.restaurant),
//               title: Text(restaurantList[index].name),
//               subtitle: Text('Cuisine: ${restaurantList[index].cuisine}'),
//               onTap: () {
//                 // Handle tap on the restaurant
//                 print('Tapped on ${restaurantList[index].name}');
//                 StoreProvider.of<AppState>(context).dispatch(SelectRestaurantAction(restaurantList[index]));
//                 Navigator.pushNamed(context, "/menuGroupPage");
//               },
//             );
//           }
//         );
//       },
//     );
//   }
// }
