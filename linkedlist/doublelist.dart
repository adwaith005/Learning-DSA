void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.display();
}

class Node {
  int data;
  Node? prev;
  Node? next;

  Node(this.data) {
    prev = null;
    next = null;
  }
}

class DoublyLinkedList {
  Node? head;

  void insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = newNode;
      newNode.prev = temp;
    }
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
