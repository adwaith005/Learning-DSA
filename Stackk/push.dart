void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(1);
  stack.push(1);
  stack.push(1);
  stack.display();
}

class Stack {
  List<dynamic> stackpush = [];
  void push(int data) {
    stackpush.add(data);
  }

  display() {
    print("stack contents");
    for (int i = stackpush.length - 1; i >= 0; i--) {
      print(stackpush[i]);
    }
  }
}
