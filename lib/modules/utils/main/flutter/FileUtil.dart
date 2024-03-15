import 'dart:io'; // dart:io cannot be used in web projects
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
class FileUtil{

   static Future<String>  readFile(String path) async {
    print(path);
    try{
        File file = File(path);
        print(file);

        String contents = await file.readAsString();
        
        return contents;
    }
    catch(e){
        print("Error reading JSON file: $e");
        return '';
    }
  }

 static Future<String> readJsonFile(String path) async {
  // Replace 'restaurant.json' with the path to your JSON file in the assets folder
  print(path);
  final String jsonString = await rootBundle.loadString(path);
  final Map<String, dynamic> jsonData = json.decode(jsonString);
  // Do something with the JSON content of the file
  print(jsonData);
  return jsonString;
}
}