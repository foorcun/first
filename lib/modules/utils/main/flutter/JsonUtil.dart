import 'dart:convert';
// import 'dart:io';

// import 'package:first/domain/retorant.dart';
// import 'package:first/modules/utils/main/flutter/FileUtil.dart';



class JsonUtil {
//   static List<Restaurant> parseRestaurants(List<dynamic> json) {
  // static Future<List<Restaurant>> fromResource(String path) async {
  //   String jsonString = await FileUtil.readFile(path);

  //   Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  //   print("jsonMap:  ");

  //   print(jsonMap);
    
  //   // return json.map((restaurant) => Restaurant(
  //   return jsonMap["restorantlar"].map((restaurant) => Restaurant(
  //         restorantId: restaurant['restorantId'],
  //         restorantName: restaurant['restorantName'],
  //         restorantMenuId: restaurant['restorantMenuId'],
  //       )).toList();
  // }
  static Map<String, dynamic> fromJsonToMap(String jsonString) {
    // print("jsonString");
    // print(jsonString);
    return jsonDecode(jsonString);
  }
}

