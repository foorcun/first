
class MenuSubGroup{
  final String menuGroupId;

  MenuSubGroup({required this.menuGroupId});

 MenuSubGroup.fromJson(Map<String, dynamic> json)
    : menuGroupId = json['menuGroupId'] as String;
}