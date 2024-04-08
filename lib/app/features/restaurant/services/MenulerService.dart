import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/modules/utils/main/flutter/HttpClientUtil.dart';
import 'package:first/modules/utils/main/flutter/JsonUtil.dart';

class MenulerService {
  Future<List<Menu>> fetchMenu() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));

    String value = await HttpClientUtil.get("assets/menuler.json");
    Map<String, dynamic> json = JsonUtil.fromJsonToMap(value);

    print(json);
print("#######");
print(json["menuler"]);
    // Menu menuGroups = Menu.fromJson(json);
    List<Menu> menuler = (json["menuler"] as List<dynamic>)
        .map((json) => Menu.fromJson(json))
        .toList();

    return menuler;
  }
}
