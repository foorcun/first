class MenuItem{
  final String? menuItemId;
  final String? menuItemName;
  final String? menuItemDescription;
  final String? menuItemPrice;
  final String? menuItemImage;
  final String? menuItemType;
  final String? menuItemSubGroupId;
  final String? menuItemGroupId;
  final String? menuItemStatus;
  final String? menuItemCreatedAt;
  final String? menuItemUpdatedAt;

  MenuItem({ this.menuItemId, this.menuItemName, this.menuItemDescription, this.menuItemPrice, this.menuItemImage, this.menuItemType, this.menuItemSubGroupId, this.menuItemGroupId, this.menuItemStatus, this.menuItemCreatedAt, this.menuItemUpdatedAt});

  MenuItem.fromJson(Map<String, dynamic> json)
    : menuItemId = json['menuItemId'] as String?,
    menuItemName = json['menuItemName'] != null ? json['menuItemName'] as String? : null,
    menuItemDescription = json['menuItemDescription'] != null ? json['menuItemDescription'] as String? : null,
    menuItemPrice = json['menuItemPrice'] != null ? json['menuItemPrice'] as String? : null,
    menuItemImage = json['menuItemImage'] != null ? json['menuItemImage'] as String? : null,
    menuItemType = json['menuItemType'] != null ? json['menuItemType'] as String? : null,
    menuItemSubGroupId = json['menuItemSubGroupId'] != null ? json['menuItemSubGroupId'] as String? : null,
    menuItemGroupId = json['menuItemGroupId'] != null ? json['menuItemGroupId'] as String? : null,
    menuItemStatus = json['menuItemStatus'] != null ? json['menuItemStatus'] as String? : null,
    menuItemCreatedAt = json['menuItemCreatedAt'] != null ? json['menuItemCreatedAt'] as String? : null,
    menuItemUpdatedAt = json['menuItemUpdatedAt'] != null ? json['menuItemUpdatedAt'] as String? : null;
}