void main() {
    List<int> array = [3, 6, 4, 8, 1, 5, 2, 7, 9];
  print("the unsorted array is $array");
  quickSort(array, 0, array.length - 1);
  print("the Sorted array is $array");
}

quickSort(List<int> array, start, end) {
  if (end <= start) return;

  int piviot = partition(array, start, end);
  quickSort(array, start, piviot - 1);
  quickSort(array, piviot + 1, end);
}

partition(List<int> array, start, end) {
  int piviot = array[end];
  int i = start - 1;
  for (int j = start; j <= end - 1; j++) {  
    if (array[j] < piviot) {
      i++;
      int temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
  }
  i++;
  int temp = array[i];
  array[i] = array[end];
  array[end] = temp;

  return i;
}
