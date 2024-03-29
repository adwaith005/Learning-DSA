void main() {
  Dl list = Dl();
  list.append(0);
  list.append(0);
  list.append(0);
  list.append(0);
  list.prepend(1);
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

  void append(int data) {
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

void prepend(int data) {
  Node? newNode = Node(data);
  if (head == null) {
    head = newNode;
    tail = newNode;
  } else {
    newNode.next = head;
    head!.prev = newNode;
    head = newNode;
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
