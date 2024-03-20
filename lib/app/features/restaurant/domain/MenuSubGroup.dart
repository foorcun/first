
class MenuSubGroup{
  final String? menuSubGroupId;

  MenuSubGroup({ this.menuSubGroupId});

 MenuSubGroup.fromJson(Map<String, dynamic> json)
    : menuSubGroupId = json['menuSubGroupId'] as String;
}