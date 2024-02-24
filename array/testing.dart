//linear Search

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  print(Linearsearch(list, 4));
}

Linearsearch(List<int> list, int x) {
  for (int i = 0; i <= list.length; i++) {
    if (x == list[i]) {
      return "Found $x at index  $i";
    }
  }
  return "Not Found";
}
