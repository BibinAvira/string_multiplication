import 'package:string_multiplication/string_multiplication.dart';
import 'package:test/test.dart';

void main() {
  test('multiplyStrings test', () {
    expect(multiplyStrings("123", "456"), "56088");
    expect(multiplyStrings("0", "456"), "0");
    expect(multiplyStrings("999", "999"), "998001");
    expect(multiplyStrings("25", "4"), "100");
  });
}
