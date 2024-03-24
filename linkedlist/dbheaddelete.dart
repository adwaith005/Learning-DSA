void main() {
  Dl list = Dl();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);
  print("before deleting head");
  list.display();
  print("after deleting  head");
  list.deletehead();
  list.display();
}

class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class Dl {
  Node? head;
  Node? tail;

  void insert(int data) {
    Node? newNode = Node(data);

    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void deletehead() {
    if (head == null) {
      return;
    } else {
      head = head!.next;
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
