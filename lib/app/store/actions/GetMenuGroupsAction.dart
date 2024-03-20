

import 'package:first/app/features/restaurant/domain/Restaurant.dart';

class GetMenuGroupsAction{
  final Restaurant selectedRestaurant;
  GetMenuGroupsAction(this.selectedRestaurant);
}