// Define a Restaurant class
class Restaurant {
  final String name;
  final String cuisine;

  Restaurant({required this.name, required this.cuisine});

  Restaurant.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String,
    cuisine = json['cuisine'] as String;
}
