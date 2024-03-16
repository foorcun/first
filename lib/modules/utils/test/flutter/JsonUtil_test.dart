import 'dart:convert';

import 'package:first/modules/utils/main/flutter/FileUtil.dart';
import 'package:first/modules/utils/main/flutter/JsonUtil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // test('Test example', () {
  //   // Test code goes here
  //   int sum = 2 + 2;

  //   // Assertion
  //   expect(sum, 4);
  // });

  test("JsonUtil test", () async {
    // arrange
    String expected = '''
{
  "restorantlar": [
    {
      "restorantId": "res1",
      "restorantName": "Kedi Cafe",
      "restorantMenuId": "resMen1"
    },
    {
      "restorantId": "res2",
      "restorantName": "Napoli Pizza",
      "restorantMenuId": "resMen2"
    }
  ]
}
''';

    // act
    Map<String, dynamic> expectedJsonMap = jsonDecode(expected);

    // String value = JsonUtil.fromJsonToMap(
    //   await FileUtil.readFile("lib/modules/utils/test/resources/restorantlar.json")
    //   .trim().replaceAll('\r\n', ""));
    String value = await FileUtil.readFile(
            "lib/modules/utils/test/resources/restorantlar.json")
        .then((value) => value.trim().replaceAll('\r\n', ""));

    Map<String, dynamic> valueJsonMap = JsonUtil.fromJsonToMap(value);

    // assert
    expect(valueJsonMap, expectedJsonMap);
  });
}
