void main() {
  Singlelinked list = Singlelinked();
  list.add(2);
  list.add(3);
  list.add(5);
  list.add(9);
  list.add(8);
  print("the values are");
  list.display();
  print("the size is ${list.size()}");
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Singlelinked {
  Node? head;

  void add(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current!.next;
      }
      current?.next = newNode;
    }
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int size() {
    Node? current = head;
    int count = 0;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }
}
