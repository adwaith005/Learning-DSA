//
void main() {
  Sl list = Sl();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.display();
  list.deletelast();
  print("after deleteing last node");
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

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void deletelast() {
    if (tail == null) {
      return;
    } else {
      tail!.prev!.next = null;
      tail = tail!.prev;
    }
  }
}
