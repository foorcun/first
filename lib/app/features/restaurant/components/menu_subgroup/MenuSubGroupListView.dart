// import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
// import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:redux/redux.dart';

// class MenuSubGroupListView extends StatelessWidget {
//   final List<MenuSubGroup> menuSubGroupList;
//   const MenuSubGroupListView({super.key, required this.menuSubGroupList});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: menuSubGroupList.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           leading: Icon(Icons.restaurant),
//           title: Text(menuSubGroupList[index].menuSubGroupName!),
//           // subtitle: Text('${menuSubGroupList[index].menuler?.length.toString()}'),
//           onTap: () {
//             // // Handle tap on the restaurant
//             // print('Tapped on ${restaurantList[index].name}');
//             // StoreProvider.of<AppState>(context)
//             //     .dispatch(SelectRestaurantAction(restaurantList[index]));
//             // Navigator.pushNamed(context, "/menuGroupPage");
//           },
//         );
//       },
//     );
//   }
// }
