void main() {
  List<int> sortedArray = [2, 5, 7, 10, 13, 17, 21];
  int target = 3;
  int result = binarySearch(sortedArray, target, 0, sortedArray.length - 1);
  if (result != -1)
    print("Element $target is present at index $result");
  else
    print("Element $target is not present in array"); 
}

int binarySearch(List<int> array, int target, int min, int max) {
  if (min <= max) {
    print(max);
    int mid = min + ((max - min) / 2).floor();
    if (array[mid] == target) return mid;
    if (array[mid] > target) return binarySearch(array, target, min, mid - 1);
    return binarySearch(array, target, mid + 1, max);
  }

  return -1;
}
