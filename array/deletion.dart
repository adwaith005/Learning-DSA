main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  deleteValue(numbers, 3);
  print(numbers);
}

deleteValue(List<int> list, int x) {
  int flag = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == x) {
      flag = i;
      break;
    }
  }
  if (flag != 0) {
    for (int i = flag; i < list.length - 1; i++) {
      list[i] = list[i + 1];
    }
    list.length--;
  }
}
