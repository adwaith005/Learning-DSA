void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.printList();
  print('middle no is : ${list.printmiddle().data}');
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

   printmiddle() {
    if (head == null || head!.next == null) {
      print("List is empty or contains only one element.");
      return;
    }

    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      fast= fast.next!.next;
      slow = slow!.next;
    }
    return slow;
  }

  void printList() {
    Node? temp = head;
    while (temp != null) {
      print("${temp.data} ");
      temp = temp.next;
    }
  }
}
