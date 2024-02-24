main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  deleteValue(numbers, 3);
  print(numbers); // Output: [1, 2, 4, 5]
}

deleteValue(List<int> list, int valueToDelete) {
  int index = -1;
  for (int i = 0; i < list.length; i++) {
    if (list[i] == valueToDelete) {
      index = i;
      break;
    }
  }
  if (index != -1) {
    for (int i = index; i < list.length - 1; i++) {
      list[i] = list[i + 1];
    }
    list.length--; // Decrease the length of the list to remove the last element
  }
}
