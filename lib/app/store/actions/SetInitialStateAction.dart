// Define action class to set initial state
import 'package:first/app/features/restaurant/domain/Restaurant.dart';

class SetInitialRestaurantStateAction {
  final List<Restaurant> listRestaurant;
  final isLoading = false;

  SetInitialRestaurantStateAction(this.listRestaurant);
}