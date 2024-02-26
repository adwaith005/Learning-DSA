void main() {
  List<int> myList = [5, 6, 7, 8, 9];
  int result = Sum(myList, 0);
  print("Product of the list elements: $result");
}

int Sum(List<int> myList, int n) {
  if (n == myList.length - 1) {
    return myList[n]; // base case: when index reaches the last element
  } else {
    return myList[n] + Sum(myList, n + 1); // recursive case
  }
}
