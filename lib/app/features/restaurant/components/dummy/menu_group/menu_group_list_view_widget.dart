// import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
// import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
// import 'package:flutter/material.dart';

// class MenuGroupWidget extends StatelessWidget {
//   MenuGroup menuGroup;
//   MenuGroupWidget({super.key, required this.menuGroup});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: menuGroup.menuSubGroups.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           // leading: const Icon(Icons.abc),
//           title:
//               Column(
//                 children: [
//                   // Text(menuGroup.menuSubGroups[index].menuSubGroupName!),
//                   LeftAlignedTitle(title: menuGroup.menuSubGroups[index].menuSubGroupName!),
//                   MenuSubGroupWidget(menuSubGroup: menuGroup.menuSubGroups[index]),
//                 ],
//               ),
//         );
//       },
//     );
//   }
// }

// class MenuSubGroupWidget extends StatelessWidget {
//   const MenuSubGroupWidget({
//     super.key,
//     required this.menuSubGroup,
//   });

//   final MenuSubGroup menuSubGroup;

//   @override
//   Widget build(BuildContext context) {
//     // return Text(menuSubGroup.menuSubGroupName!);
//     return MenuListViewWidget(menuSubGroup: menuSubGroup);
//   }
// }

// class MenuListViewWidget extends StatelessWidget {
//   const MenuListViewWidget({
//     super.key,
//     required this.menuSubGroup,
//   });

//   final MenuSubGroup menuSubGroup;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         itemCount: menuSubGroup.menuler!.length,
//         itemBuilder: (context, index) {
//           return Column(
//             children: [
//               ListTile(
//                 title: Text(menuSubGroup.menuler![index].menuAdi!),
//               ),
//               Divider()
//             ],
//           );
//         });
//   }
// }




// class LeftAlignedTitle extends StatelessWidget {
//   final String title;

//   LeftAlignedTitle({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.centerLeft,
//       child: Text(
//         title,
//         style: TextStyle(
//           fontSize: 20, // adjust the font size as needed
//           fontWeight: FontWeight.bold,
//           // add more styles here if needed
//         ),
//       ),
//     );
//   }
// }