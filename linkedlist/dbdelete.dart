void main() {
  Dl list = Dl();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);
  list.display();
  list.deleteNodeWithValue(3);
  print("after delete");
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

  void deleteNodeWithValue(int value) {
    Node? current = head;
    if (head == null) {
      return;
    } else {
      if (head!.data == value) {
        head = head!.next;
      }
    }

    while (current != null) {
      if (current.data == value) {
        current.prev!.next = current.next;
        current.next!.prev = current.prev;

        return;
      }
      current = current.next;
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
