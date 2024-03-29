void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.display();
}

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node newdata = Node(data);
    newdata.next = top;
    top = newdata;
  }

  bool isEmpty() {
    return top == null;
  }

  dynamic pop() {
    if (isEmpty()) {
      print("Stack Underflow");
      return null;
    } else {
      dynamic poppeddata = top!.data;
      top = top!.next;
      return poppeddata;
    }
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void peek() {
    if (isEmpty()) {
      print("the stack is empty");
    } else {
      print("the top element is ${top!.data}");
    }
  }
}
