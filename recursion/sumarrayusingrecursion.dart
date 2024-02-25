void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  int result = Sum(myList, 0);
  print("Product of the list elements: $result");
}

int Sum(List<int> myList, int index) {
  if (index == myList.length - 1) {
    return myList[index]; // base case: when index reaches the last element
  } else {
    return myList[index] + Sum(myList, index + 1); // recursive case
  }
}
