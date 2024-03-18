
class MenuGroups{
  final String menuGroupsId;

  MenuGroups({required this.menuGroupsId});

 MenuGroups.fromJson(Map<String, dynamic> json)
    : menuGroupsId = json['menuGroupId'] as String;
}