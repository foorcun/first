import 'dart:async';

import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/modules/utils/main/flutter/HttpClientUtil.dart';
import 'package:first/modules/utils/main/flutter/JsonUtil.dart';



class MenuGroupService {
  // Simulate fetching restaurant data from a remote server
  Future<MenuGroups> fetchMenuGroup() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));


        String value = await HttpClientUtil.get(
        "assets/menu_groups.json");
        Map<String, dynamic> json = JsonUtil.fromJsonToMap(value);

print(json);

MenuGroups menuGroup = MenuGroups.fromJson(json);


    return menuGroup;
  }
}