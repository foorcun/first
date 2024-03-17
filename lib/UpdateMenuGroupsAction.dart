// Define an action to update menu groups
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';

class UpdateMenuGroupsAction {
  final List<MenuGroups> menuGroupsList;

  UpdateMenuGroupsAction(this.menuGroupsList);
}