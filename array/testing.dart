void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(binarysearch(list, 11));
}

binarysearch(List<int> list, int x) {
  int min = 0;
  int max = list.length - 1;
  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    if (x == list[mid]) {
      return "Found  ${x} at index ${mid}";
    } else if (x < list[mid]) {
      max = mid - 1;
    } else {
      min = mid + 1;
    }
  }
  return "Element is not present in the array";
}
