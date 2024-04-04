void main() {
  var stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  print("Original Stack: ${stack._elements}");

  var reversedStack = reverseStack(stack);

  print("Reversed Stack: ${reversedStack._elements}");
}
class Stack {
  List _elements = [];

  void push(dynamic element) {
    _elements.add(element);
  }

  dynamic pop() {
    if (_elements.isEmpty) {
      return null;
    }
    return _elements.removeLast();
  }

  bool get isEmpty => _elements.isEmpty;
}



Stack reverseStack(Stack stack) {
  var reversedStack = Stack();

  while (!stack.isEmpty) {
    reversedStack.push(stack.pop());
  }

  return reversedStack;
}
