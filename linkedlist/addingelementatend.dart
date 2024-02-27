class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  // Function to add a node at the end of the linked list
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

  // Function to add a node at the beginning of the linked list
  void prepend(dynamic data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // Function to print the linked list
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
  
  // Adding nodes at the end
  linkedList.append(1);
  linkedList.append(2);
  linkedList.append(3);
  
  // Adding nodes at the beginning
  linkedList.prepend(0);
  linkedList.prepend(-1);
  
  // Printing the linked list
  linkedList.printList();
}
