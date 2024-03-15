import 'package:first/modules/utils/main/flutter/FileUtil.dart';
import 'package:first/modules/utils/main/flutter/HttpClientUtil.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('read file', () async {
    // Test olarak run olmuyor ama. main() icinde flutter projesi olarak calistirinca oluyor
    String value = await HttpClientUtil.get(
        "lib/modules/utils/test/resources/restorantlar.json");
    print("value:");
    print(value);
  });
}
