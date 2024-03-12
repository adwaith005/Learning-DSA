void main() {
  List<int?> myList = List.filled(5, null);
  myList[0] = 1;
  myList[2] = 3;
  print(myList); // Output: [1, null, 3, null, null]
}