void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);
  list.insert(5);
  print("Before deletion:");
  list.display();
  
  list.delete(3);

  print("\nAfter deletion:");
  list.display();
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SinglyLinkedList {
  Node? head;

  void insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
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

  void delete(int value) {
    if (head == null) {
      return;
    }

    if (head!.data == value) {
      head = head!.next;
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
        return;
      }
      current = current.next;
    }
  }
}
