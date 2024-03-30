void insertionSort(List<num> list) {
  int length = list.length;
  for (int i = 1; i < length; i++) {
    num temp = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > temp) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = temp;
  }
}

void main() {
  List<num> numbers = [5, 2, 4, 6, 1, 3];
  print("Before sorting: $numbers");
  insertionSort(numbers);
  print("After sorting: $numbers");
}
