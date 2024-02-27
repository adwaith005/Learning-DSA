class Node {
  int data;
  Node? next; // Use Node? to allow null

  Node(this.data);
}

class LinkedList {
  Node? head; // Use Node? to allow null

  void insert(int data) {
    Node newNode = Node(data);
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

  void removeDuplicates() {
    if (head == null) return;

    Node? current = head;
    while (current != null && current.next != null) {
      if (current.data == current.next!.data) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
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

void main() {
  LinkedList list = LinkedList();
  list.insert(1);
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(3);
  list.insert(4);

  print("Original List:");
  list.display();

  print("\nList after removing duplicates:");
  list.removeDuplicates();
  list.display();
}
