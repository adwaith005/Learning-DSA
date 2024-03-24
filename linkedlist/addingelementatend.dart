class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void append(dynamic data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
  }


  void prepend(dynamic data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  
  linkedList.append(1);
  linkedList.append(2);
  linkedList.append(3);
  
  linkedList.prepend(0);
  linkedList.prepend(-1);
  
  linkedList.printList();
}
