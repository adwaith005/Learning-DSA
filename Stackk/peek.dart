void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print("the last element is ${stack.peek()}");
  stack.dispay();
}

class Stack {
  List<dynamic> stack = [];

  void push(int data) {
    stack.add(data);
  }

  peek() {
    if (stack.isNotEmpty) {
      return stack.last;
    }
  }

  dispay() {
    for (int i = stack.length - 1; i >= 0; i--) {
      print(stack[i]);
    }
  }
}
