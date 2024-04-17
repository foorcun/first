
import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuItem.dart';

class MenuSubGroup{
  final String? menuSubGroupId;
  final String? menuSubGroupName;
  final List<MenuItem>? menuItems;

  // MenuSubGroup({ this.menuSubGroupId, this.menuSubGroupName, this.menuler});
  MenuSubGroup({ this.menuSubGroupId,  this.menuSubGroupName, this.menuItems});

 MenuSubGroup.fromJson(Map<String, dynamic> json)
    : menuSubGroupId = json['menuSubGroupId'] as String?,
    menuSubGroupName = json['menuSubGroupName'] != null ? json['menuSubGroupName'] as String? : null,
    menuItems = (json['menuItems'] != null )
      ? (json['menuItems'] as List<dynamic>)
        .map((menuItem) => MenuItem.fromJson(menuItem))
        .toList()
        : null;
    // menuSubGroupName = "asdf",
    // menuler = (json["menuler"] != null )
    //   ? (json["menuler"] as List<dynamic>)
    //     .map((menu) => Menu.fromJson(menu))
    //     .toList()
    //     : null;
    // menuler = null;
}