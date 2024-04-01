class Menu {
  final String menuId;
  final String? menuAdi;

  Menu({required this.menuId, this.menuAdi});

  Menu.fromJson(Map<String, dynamic> json)
      : menuId = json['menuId'] as String,
        menuAdi = json['menuAdi'] != null ? json['menuAdi'] as String : null;
}
