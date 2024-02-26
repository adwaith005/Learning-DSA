class Node {
  int data;
  Node? next;

  Node(this.data) {
    next = null;
  }
}

class SinglyLinkedList {
  Node? head;

  void insert(int data) {
    Node newNode = Node(data);
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

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

SinglyLinkedList arrayToLinkedList(List<int> arr) {
  SinglyLinkedList list = SinglyLinkedList();
  for (int i = 0; i < arr.length; i++) {
    list.insert(arr[i]);
  }
  return list;
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  SinglyLinkedList list = arrayToLinkedList(arr);
  list.display();
}
