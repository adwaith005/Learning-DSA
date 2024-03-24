void main() {
  Sl list = Sl();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.add(5);
  print("before deleting");
  list.display();
  print("After deleting");
  list.deleteAfter(5);
  list.display();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Sl {
  Node? head;

  void add(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void display() {  
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deleteAfter(int value) {
    Node? temp = head;
    if (head == null) {
      return;
    }
    while (temp != null) {
      if (temp.data == value) {
        temp.next = temp.next!.next;
      }
      temp = temp.next;
    }
  }
}
