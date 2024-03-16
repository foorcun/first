
class MenuGroup{
  final String menuGroupId;

  MenuGroup({required this.menuGroupId});

 MenuGroup.fromJson(Map<String, dynamic> json)
    : menuGroupId = json['menuGroupId'] as String;
}