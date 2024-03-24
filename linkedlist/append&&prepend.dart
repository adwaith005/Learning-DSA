void main() {
  Sl list = Sl();
  print("prepend");

  list.prepend(3);
  list.prepend(2);
  list.prepend(1);
  list.display();
  print("append");
  list.append(4);
  list.append(5);
  list.append(6);
  list.display();
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data, {this.next});
}

class Sl {
  Node? head;
  void prepend(data) {
    Node newNode = Node(data, next: head);
    head = newNode;
  }

  void append(data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
