import 'package:first/app/features/restaurant/domain/MenuItem.dart';

class CartItem{
  MenuItem menuItem;
  int quantity;
  CartItem({required this.menuItem, required this.quantity});

  @override
  String toString() {
    // TODO: implement toString
    return "CartItem: ${menuItem.menuItemName} - ${quantity}";
  }
}