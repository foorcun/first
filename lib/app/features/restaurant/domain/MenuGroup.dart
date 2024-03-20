

import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';

class MenuGroup{
  final String menuGroupId;
 final List<MenuSubGroup> menuSubGroups;

  MenuGroup({required this.menuGroupId, required this.menuSubGroups});
  // MenuGroup({required this.menuGroupId});

  MenuGroup.fromJson(Map<String, dynamic> json)
      : menuGroupId = json['menuGroupId'] as String,
        menuSubGroups = (json['menuSubGroups'] != null)
            ? (json['menuSubGroups'] as List<dynamic>)
                .map((group) => MenuSubGroup.fromJson(group))
                .toList()
            : [];
}