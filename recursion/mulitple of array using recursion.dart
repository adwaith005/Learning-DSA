void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  int result = Product(myList, 0);
  print("Product of the list elements: $result");
}

int Product(List<int> myList, int index) {
  print(myList.length);

  if (index == myList.length - 1) {
    return myList[index]; // base case: when index reaches the last element
  } else {
    return myList[index] * Product(myList, index + 1); // recursive case
  }
}
