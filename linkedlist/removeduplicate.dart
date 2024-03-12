void main() {
  LinkedList myList = LinkedList();

  // Adding nodes to the list
  myList.add(2);
  myList.add(6);
  myList.add(2);
  myList.add(2);
  myList.add(6);
  myList.add(2);
  myList.add(4);
  myList.add(6);

  print("Before removing duplicates:");
  myList.printList();

  myList.removeDuplicates();

  print("\nAfter removing duplicates:");
  myList.printList();
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void add(int data) {
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
    if (head == null) {
      return;
    }

    Node? current = head;
    while (current != null) {
      Node? runner = current;
      while (runner!.next != null) {
        if (runner.next!.data == current.data) {
          runner.next = runner.next!.next;
        } else {
          runner = runner.next;
        }
      }
      current = current.next;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
