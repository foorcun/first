class Menu{
  final String menuId;

  Menu({required this.menuId});

  Menu.fromJson(Map<String, dynamic> json)
  : menuId = json['menuId'] as String;
}