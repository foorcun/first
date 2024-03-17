

import 'package:first/app/features/restaurant/MenuGroupsService.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter_redux/flutter_redux.dart';

class GetMenuGroupsAction{
  final Restaurant selectedRestaurant;
  GetMenuGroupsAction(this.selectedRestaurant);
}