void main() {
  Sl list = Sl();
  print('inserting first');
  list.insertfirst(3);
  list.insertfirst(2);
  list.insertfirst(1);
  list.display();
  print('inserting last');  
  list.insertlast(4);
  list.insertlast(5);
  list.insertlast(6);
  list.insertlast(7);
  list.display();

}

class Node {
  int data;
  Node? next;
  Node(this.data, {this.next});
}

class Sl {
  Node? head;

  void insertfirst(int data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node? newNode = Node(data, next: head);
      head = newNode;
    }
  }

  void insertlast(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
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
