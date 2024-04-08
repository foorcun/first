import 'package:first/app/features/restaurant/domain/Menu.dart';

class CartItem{
  Menu menu;
  int amount;
  CartItem({required this.menu, required this.amount});
}