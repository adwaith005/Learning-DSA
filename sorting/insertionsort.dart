void main() {
  List<int> list = [5, 3, 4, 2, 6, 7, 1];
  insertionsort(list);
  print("after sorting $list");
}

insertionsort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int temp = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > temp) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = temp;
  }
}
