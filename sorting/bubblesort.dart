void main() {
  List<int> list = [3, 2, 1, 4, 6, 5, 9];
  bubblesort(list);
  print("after sorting $list");
}

bubblesort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - 1 - i; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}
