
class MenuSubGroup{
  final String? menuSubGroupId;
  final String? menuSubGroupName;

  MenuSubGroup({ this.menuSubGroupId, this.menuSubGroupName});

 MenuSubGroup.fromJson(Map<String, dynamic> json)
    : menuSubGroupId = json['menuSubGroupId'] as String,
    menuSubGroupName = json['menuSubGroupName'] != null ? json['menuSubGroupName'] as String? : null;
}