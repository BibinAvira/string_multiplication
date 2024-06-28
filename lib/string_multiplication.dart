String multiplyStrings(String num1, String num2) {
  if (num1 == "0" || num2 == "0") {
    return "0";
  }

  int len1 = num1.length;
  int len2 = num2.length;
  List<int> result = List.filled(len1 + len2, 0);

// Iterate over each digit of num1 and num2 to compute their product
  for (int i = len1 - 1; i >= 0; i--) {
    for (int j = len2 - 1; j >= 0; j--) {
      // Convert character to integer value by subtracting ASCII value of '0'
      //The character '0' has a numeric value of 48.
      //The character '1','2', to '9' have sequential numeric values of 49, 50, to 57.

      int n1 = num1[i].codeUnitAt(0) - '0'.codeUnitAt(0);
      //so if num1[i] is '4' its code value is 52 minus code value of '0' thats 48 gives result 4
      int n2 = num2[j].codeUnitAt(0) - '0'.codeUnitAt(0);

      // Calculate the product of the digits and add it to the current result position
      int sum = n1 * n2 + result[i + j + 1];

      // Update the result array at the appropriate positions
      result[i + j + 1] = sum % 10; // Store the units digit of sum
      result[i + j] +=
          sum ~/ 10; // Add the carry (tens digit of sum) to the next position
    }
  }

  StringBuffer product = StringBuffer();
  for (int num in result) {
    if (!(product.isEmpty && num == 0)) {
      product.write(num);
    }
  }

  return product.isEmpty ? "0" : product.toString();
}
