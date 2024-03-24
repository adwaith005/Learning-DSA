void main() {
  List<int> list = [1, 2, 3, 4, 5];
  int result = Product(list, 0);
  print("Product of the list elements: $result");
}

int Product(List<int> list, int n) {
  if (n == list.length - 1) {
    return list[n];  
  } else {
    return list[n] * Product(list, n + 1);  
  }
}
