// import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
// import 'package:flutter/material.dart';


// class MenuGroupCenterPage extends StatelessWidget {
//   final Future<MenuGroups> menuGroupFuture;

//   const MenuGroupCenterPage({Key? key, required this.menuGroupFuture})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<MenuGroups>(
//       future: menuGroupFuture,
//       builder: (context, AsyncSnapshot<MenuGroups> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text("Loading..."),
//             ),
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text("Error"),
//             ),
//             body: Center(
//               child: Text("Error: ${snapshot.error}"),
//             ),
//           );
//         } else {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text(snapshot.data!.menuGroupsId),
//             ),
//             body: Center(
//               child: Text(
//                 snapshot.data!.menuGroupsId,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
// }