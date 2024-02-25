void main() {
  var res = endswith();
  print(res);
}

endswith() {
  String str = "Hello World";
  bool endsWithWorld = str.endsWith("World"); 
  return endsWithWorld;
}
