void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.display();
}
class Node {
  int data;
  Node? next;

  Node(this.data);
}


class SinglyLinkedList {
  Node? head; // Use nullable type

  void insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head; // Use nullable type
      while (temp!.next != null) {
        // Asserting temp to be non-null
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }

  void display() {
    Node? temp = head; // Use nullable type
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
