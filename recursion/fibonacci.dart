void main() {
  int n =
      10; // Change the value of n to calculate Fibonacci of different numbers
  print("Fibonacci sequence up to $n:");
  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
