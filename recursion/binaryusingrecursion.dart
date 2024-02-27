void main() {
  List<int> sortedArray = [2, 5, 7, 10, 13, 17, 21];
  int target = 13;
  int result = binarySearch(sortedArray, target, 0, sortedArray.length - 1);
  if (result != -1)
    print("Element $target is present at index $result");
  else
    print("Element $target is not present in array");
} 

int binarySearch(List<int> array, int target, int low, int high) {
  if (high >= low) {
    int mid = low + ((high - low) ~/ 2);

    // If the element is present at the middle itself
    if (array[mid] == target) return mid;

    // If element is smaller than mid, then it can only be present in left subarray
    if (array[mid] > target) return binarySearch(array, target, low, mid - 1);

    // Else the element can only be present in right subarray
    return binarySearch(array, target, mid + 1, high);
  }

  // Element is not present in array
  return -1;
}
