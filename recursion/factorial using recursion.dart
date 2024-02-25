void main() {
  int res = CalculateFatorial(4);
  print(res);
}

CalculateFatorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    var result = (n * CalculateFatorial(n - 1));
    return result;
  }
}
