void main() {
  SL list = SL();
  list.add(1);
  list.add(3);
  list.add(4);
  list.display();
  print("Size of the list: ${list.size()}");
  list.delete(4);
  print('after printing');
  list.display();
  print("Size of the list: ${list.size()}");
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SL {
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
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void delete(int value) {
    if (head != null && head!.data == value) {
      head = head!.next;
      return;
    } else {
      Node? current = head;
      while (current!.next != null) {
        if (current.next!.data == value) {
          current.next = current.next!.next;
          return;
        }
        current = current.next;
      }
    }
  }

  int size() {
    int count = 0;
    Node? current = head;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }
}
