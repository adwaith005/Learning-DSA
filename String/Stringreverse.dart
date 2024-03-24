void main() {
  String str = "hello";
  String reversed = reverseString(str);
  print(reversed); // Output: olleh
}

String reverseString(String str) {
  return str.split('').reversed.join('-');
}


