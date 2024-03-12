void main() {
  DoublyLinkedList myList = DoublyLinkedList();

  // Adding nodes to the list
  myList.add(1);
  myList.add(2);
  myList.add(3);

  // Deleting a node from the list
  myList.delete(2);

  // Printing the list
  myList.printList();
}

class Node {
  dynamic data;
  Node? prev;
  Node? next;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  // Function to add a node to the end of the list
  void add(dynamic data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  // Function to delete a node from the list
  void delete(dynamic data) {
    Node? current = head;
    while (current != null) {
      if (current.data == data) {
        if (current == head) {
          head = current.next;
          if (head != null) {
            head!.prev = null;
          }
        } else if (current == tail) {
          tail = current.prev;
          if (tail != null) {
            tail!.next = null;
          }
        } else {
          current.prev!.next = current.next;
          current.next!.prev = current.prev;
        }
        break;
      }
      current = current.next;
    }
  }

  // Function to print the list
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
