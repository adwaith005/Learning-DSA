void main() {
  var res = Contains();
  print(res);
}

Contains() {
  String str = "Hello World";
  bool containsWorld = str.contains("World");
  return containsWorld;
}
