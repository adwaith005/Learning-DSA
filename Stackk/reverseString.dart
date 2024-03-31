void main() {
  String input = "Hello, World!";
  print("Original string: $input");
  print("Reversed string: ${reverseString(input)}");
}

class Stack {
  List _items = [];

  void push(dynamic element) {
    _items.add(element);
  }

  dynamic pop() {
    if (_items.isNotEmpty()) {
      return _items.removeLast();
    }
    return null;
  }

  bool isEmpty() {
    return _items.isEmpty;
  }
}

String reverseString(String input) {
  Stack stack = Stack();
  String reversedString = '';

  // Push each character onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }

  // Pop each character from the stack to reverse the string
  while (!stack.isEmpty()) {
    reversedString += stack.pop();
  }

  return reversedString;
}
