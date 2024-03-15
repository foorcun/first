import 'package:first/modules/utils/main/flutter/FileUtil.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('read file', () async {
    String expected = "Bu bir test textir.";

    String value = await FileUtil.readFile(
            "lib/modules/utils/test/resources/test_text.txt")
        .then((value) => value);
    expect(value, expected);
  });
}
