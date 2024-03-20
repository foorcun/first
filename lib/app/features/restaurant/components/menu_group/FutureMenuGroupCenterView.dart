// import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
// import 'package:flutter/material.dart';

// class FutureMenuGroupCenterView extends StatelessWidget {
//   final Future<MenuGroups> menuGroupFuture;

//   const FutureMenuGroupCenterView({Key? key, required this.menuGroupFuture})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<MenuGroups>(
//       future: menuGroupFuture,
//       builder: (context, AsyncSnapshot<MenuGroups> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (snapshot.hasError) {
//           return Center(
//            child: Text("Error: ${snapshot.error}"),
//           );
//         } else {
//           return 
//              Center(
//               child: Text(
//                 snapshot.data!.menuGroupsId,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//           );
//         }
//       },
//     );
//   }
// }
