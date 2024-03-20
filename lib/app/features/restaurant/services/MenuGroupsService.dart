import 'dart:async';

import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/modules/utils/main/flutter/HttpClientUtil.dart';
import 'package:first/modules/utils/main/flutter/JsonUtil.dart';

class MenuGroupsService {
  // Simulate fetching restaurant data from a remote server
  // Future<List<MenuGroups>> fetchMenuGroups() async {
  Future<MenuGroups> fetchMenuGroups() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    String value = await HttpClientUtil.get("assets/menu_groups.json");
    Map<String, dynamic> json = JsonUtil.fromJsonToMap(value);

    print(json);
print("#######");
print(json["menuGroups"]);
    MenuGroups menuGroups = MenuGroups.fromJson(json);
    // List<MenuGroups> menuGroups = (json["menuGroups"] as List<dynamic>)
    //     .map((json) => MenuGroups.fromJson(json))
    //     .toList();

    return menuGroups;
  }
}
