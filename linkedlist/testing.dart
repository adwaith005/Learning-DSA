void main() {
  Sl list = Sl();
  list.add(4);
  list.add(2);
  list.add(7);
  list.add(4);
  list.add(2);
  list.add(7);
  print("before removing");
  list.display();
  list.removeDuplicates();
  print("after removing duplicates");
  list.display();
}

class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class Sl {
  Node? head;
  Node? tail;

  void add(int data) {
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

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
