import 'dart:io';

import 'package:string_multiplication/string_multiplication.dart';

void main() {
  String? num1 = "125";

  String? num2 = "265";

  if (num1 != null && num2 != null) {
    String product = multiplyStrings(num1, num2);
    print("The product of $num1 and $num2 is $product.");
  } else {
    print("Invalid input.");
  }
}
