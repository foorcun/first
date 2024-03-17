// Define a Restaurant class
class Restaurant {
  final String name;
  final String? cuisine;
  final String? menuGroupId;

  Restaurant({required this.name, required this.cuisine, this.menuGroupId});

  Restaurant.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String,
    cuisine = json['cuisine'] as String?,
    menuGroupId = json['menuGroupId'] as String?;
}
