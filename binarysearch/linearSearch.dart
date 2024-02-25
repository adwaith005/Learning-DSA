main() {
  List<int> list = [0, 2, 5, 8, 10, 12, 15, 30];
  print(linearSearch(list, 8));
}

String linearSearch(List<int> list, int x) {
  for (int i = 0; i < list.length; i++) {
    if (x == list[i]) {
      return "Found $x at index $i";
    }
  }
  return "Not found";
}
