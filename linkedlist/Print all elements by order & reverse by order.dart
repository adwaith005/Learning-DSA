void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.add(5);  list.display();
  print("reversed linked list ");

  list.reverse();
  list.display();
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

  void display() {
    Node? current = head;
    print("Forward Order:");
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  } 
}
 