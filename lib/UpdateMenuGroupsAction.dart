// Define an action to update menu groups
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';

class UpdateMenuGroupsAction {
  final MenuGroups menuGroups;

  UpdateMenuGroupsAction(this.menuGroups);
}