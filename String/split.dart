void main() {
  var res = split();
  print(res);
}
split() {
  String str = "HelloWorld";
  List<String> parts = str.split("");
  return parts;
}
