void main() {
  List<int> list = [5, 6, 7, 8, 9];
  int result = Sum(list, 0);
  
  print("sum of the list elements: $result");
}

int Sum(List<int> list, int n) {
  if (n == list.length - 1) {
    return list[n]; 
  } else {
    return list[n] + Sum(list, n + 1); 
  }
}
