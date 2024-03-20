

// Define action class to set initial state
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';

class SetInitialMenuGroupsStateAction {
  final MenuGroups menuGroups;
  final isLoading = false;

  SetInitialMenuGroupsStateAction(this.menuGroups);
}