void main() {
  int res = Fatorial(4);
  print(res);
}

Fatorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    var result = (n * Fatorial(n - 1));
    return result;
  }
}
