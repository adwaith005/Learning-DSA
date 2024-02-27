class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  LinkedList();

  void insert(dynamic data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node? currentNode = head;
      while (currentNode!.next != null) {
        currentNode = currentNode.next;
      }
      currentNode.next = Node(data);
    }
  }

  void printList() {
    Node? currentNode = head;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next;
    }
  }
}

void main() {
  List<dynamic> array = [1, 2, 3, 4, 5];
  LinkedList linkedList = LinkedList();

  for (var element in array) {
    linkedList.insert(element);
  }

  linkedList.printList();
}
