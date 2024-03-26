void main() {
  Stack stack = Stack();

  try {
    stack.pop();
  } catch (e) {
    print(e);
  }
}

class Stack {
  List<dynamic> stack = [];

  void pop() {
    if (stack.isNotEmpty) {
      return stack.removeLast();
    } else {
      throw Exception("stack is empty ");
    }
  }
}
