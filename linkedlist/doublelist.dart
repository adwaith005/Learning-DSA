void main() {
  Dl list = Dl();
  list.add(3);
  list.add(2);
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

  void add(int val) {
    Node newNode = Node(val);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }   

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    } 
  }

}
