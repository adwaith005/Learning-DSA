void insertionSort(List<num> list) {
  int length = list.length;
  for (int i = 1; i < length; i++) {
    num key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}

void main() {
  List<num> numbers = [5, 2, 4, 6, 1, 3];
  print("Before sorting: $numbers");
  insertionSort(numbers);
  print("After sorting: $numbers");
}
