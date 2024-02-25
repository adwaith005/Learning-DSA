void main() {
  var res = startswith();
  print(res);
}

startswith() {
  String str = "Hello World";
  bool startsWithHello = str.startsWith("Hello");
  return startsWithHello;
}
