

// Define action class to set initial state
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';

class SetInitialMenuGroupsStateAction {
  final List<MenuGroups> listMenuGroups;
  final isLoading = false;

  SetInitialMenuGroupsStateAction(this.listMenuGroups);
}