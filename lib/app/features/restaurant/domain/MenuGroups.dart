
class MenuGroups{
  final String menuGroupId;

  MenuGroups({required this.menuGroupId});

 MenuGroups.fromJson(Map<String, dynamic> json)
    : menuGroupId = json['menuGroupId'] as String;
}