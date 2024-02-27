void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);
  list.insert(5);

  print("Forward traversal:");
  list.displayForward();

  print("\nBackward traversal:");
  list.displayBackward();

  list.delete(3); // Deleting node with value 3

  print("\nAfter deletion:");
  list.displayForward();
}
class Node {
  int data;
  Node? prev;
  Node? next;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.prev = tail;
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void displayForward() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void displayBackward() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

  void delete(int valueToDelete) {
    if (head == null) {
      return;
    }

    if (head!.data == valueToDelete) {
      head = head!.next;
      if (head != null) {
        head!.prev = null;
      }
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == valueToDelete) {
        current.next = current.next!.next;
        if (current.next != null) {
          current.next!.prev = current;
        } else {
          tail = current;
        }
        return;
      }
      current = current.next;
    }
  }
}
