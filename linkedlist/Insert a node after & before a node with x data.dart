class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void insert(dynamic data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void insertAfter(dynamic data, dynamic newData) {
    var current = head;
    while (current != null) {
      if (current.data == data) {
        var newNode = Node(newData);
        newNode.next = current.next;
        current.next = newNode;
        return;
      }
      current = current.next;
    }
    print("Node with data $data not found.");
  }

  void insertBefore(dynamic data, dynamic newData) {
    if (head == null) {
      print("List is empty.");
      return;
    }

    if (head!.data == data) {
      var newNode = Node(newData);
      newNode.next = head;
      head = newNode;
      return;
    }

    var current = head;
    while (current!.next != null) {
      if (current.next!.data == data) {
        var newNode = Node(newData);
        newNode.next = current.next;
        current.next = newNode;
        return;
      }
      current = current.next;
    }
    print("Node with data $data not found.");
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var list = LinkedList();
  list.insert(1);
  list.insert(2);
  list.insert(3);
  list.insert(4);

  print("Original list:");
  list.display();

  list.insertAfter(2, 5);
  print("\nList after inserting 5 after 2:");
  list.display();

  // list.insertBefore(3, 6);
  // print("\nList after inserting 6 before 3:");
  // list.display();
}
