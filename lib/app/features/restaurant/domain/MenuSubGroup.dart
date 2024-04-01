
import 'package:first/app/features/restaurant/domain/Menu.dart';

class MenuSubGroup{
  final String? menuSubGroupId;
  final String? menuSubGroupName;
  final List<Menu>? menuler;

  MenuSubGroup({ this.menuSubGroupId, this.menuSubGroupName, this.menuler});

 MenuSubGroup.fromJson(Map<String, dynamic> json)
    : menuSubGroupId = json['menuSubGroupId'] as String,
    menuSubGroupName = json['menuSubGroupName'] != null ? json['menuSubGroupName'] as String? : null,
    menuler = (json["menuler"] != null )
      ? (json["menuler"] as List<dynamic>)
        .map((menu) => Menu.fromJson(menu))
        .toList()
        : null;
}