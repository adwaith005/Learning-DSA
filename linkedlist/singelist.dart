void main() {
  SinglyLinkdedList list = SinglyLinkdedList();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);
  list.display();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SinglyLinkdedList {
  Node? head;

  void insert(int data) {
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

  display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
