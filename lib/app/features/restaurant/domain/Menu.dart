import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';

class Menu {
  final String menuId;
  final String? menuAdi;
  final List<MenuSubGroup>? menuSubGroups;


  Menu({required this.menuId, this.menuAdi, this.menuSubGroups});

  Menu.fromJson(Map<String, dynamic> json)
      : menuId = json['menuId'] as String,
        menuAdi = json['menuAdi'] as String?,
        menuSubGroups = (json['menuSubGroups'] != null)
            ? (json['menuSubGroups'] as List<dynamic>)
                .map((menuSubGroup) => MenuSubGroup.fromJson(menuSubGroup))
                .toList()
            : null;
}
