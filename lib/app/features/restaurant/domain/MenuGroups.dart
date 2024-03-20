import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';

class MenuGroups {
  // final String menuGroupsId;
  final List<MenuGroup>? menuGroupList;

  MenuGroups({ this.menuGroupList});

  MenuGroups.fromJson(Map<String, dynamic> json)
      // : menuGroupsId = json['menuGroupId'] as String,
      :  menuGroupList = (json['menuGroups'] != null)
            ? (json['menuGroups'] as List<dynamic>)
                .map((group) => MenuGroup.fromJson(group))
                .toList()
            : null;
}
