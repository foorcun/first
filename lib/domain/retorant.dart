class Restaurant {
  String restorantId;
  String restorantName;
  String restorantMenuId;

  Restaurant({
    required this.restorantId,
    required this.restorantName,
    required this.restorantMenuId,
  });

  @override
  String toString() {
    return 'Restaurant{id: $restorantId, name: $restorantName, menuId: $restorantMenuId}';
  }
}