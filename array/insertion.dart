void main() {
  List<int> num = [1, 2, 3, 4, 5];
  int value = 10;
  int position = 2;
  num.add(0);
  for (int i = num.length - 1; i > position; i--) {
    num[i] = num[i - 1];
  }
  num[position-1] = value;

  print(num);
}
