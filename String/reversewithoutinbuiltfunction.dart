void main() {
  List<String> list = ["Hello", "World"];

  print(reversedList(list));
}

reversedList(List<String> list) {
  List<String> newlist = [];
  for (int i = list.length - 1; i >= 0; i--) {
    newlist.add(list[i]);
  }
  return newlist;
}
  