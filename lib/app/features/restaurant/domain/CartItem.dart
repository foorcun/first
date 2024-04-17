import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuItem.dart';

class CartItem{
  MenuItem menuItem;
  int amount;
  CartItem({required this.menuItem, required this.amount});
}