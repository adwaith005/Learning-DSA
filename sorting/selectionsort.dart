void selectionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int min = i;

    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }

    if (min != i) {
      int temp = arr[i];
      arr[i] = arr[min];
      arr[min] = temp;
    }
  }
}

void main() {
  List<int> arr = [64, 25, 12, 22, 11];
  print("Original array: $arr");
  selectionSort(arr);
  print("Sorted array: $arr");
}
