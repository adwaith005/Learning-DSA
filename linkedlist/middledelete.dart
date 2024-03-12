void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  print("before deleting the middle element");
  list.printList();
  print("after deleting");
  list.deleteMiddle();
  list.printList();
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void add(int newData) {
    Node newNode = Node(newData);
    if (head == null) {
      head = newNode;
    } else {
      Node temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = newNode;
    }
  }

  void deleteMiddle() {
    if (head == null || head!.next == null) {
      print("List is empty or contains only one element.");
      return;
    }

    Node? slowPtr = head;
    Node? fastPtr = head;
    Node? prevPtr;

    while (fastPtr != null && fastPtr.next != null) {
      fastPtr = fastPtr.next!.next;
      prevPtr = slowPtr;
      slowPtr = slowPtr!.next;
    }
    prevPtr!.next = slowPtr!.next;
  }

  void printList() {
    Node? temp = head;
    while (temp != null) {
      print("${temp.data} ");
      temp = temp.next;
    }
  }
}
