main() {
  List<int> list = [0, 2, 5, 8, 10, 12, 15, 30];
  print(binarySearch(list, 8));
}

binarySearch(List<int> list, int x) {
  int min = 0;
  int max = min + list.length - 1;
  print(max);
  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    if (x == list[mid]) {
      return "Found  $x at Index $mid";
    } else if (x < list[mid]) {
      max = mid - 1;
    } else {
      min = mid + 1;
    }
  }
  return "Not Found ";
}
