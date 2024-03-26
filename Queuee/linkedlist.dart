void main() {
  Queue myQueue = Queue();
  myQueue.enqueue(1);
  myQueue.enqueue(2);
  myQueue.enqueue(3);
  myQueue.enqueue(4);
  myQueue.display();
  print("before deleting");
  myQueue.dequeue();
  print("after deleting");
  myQueue.display();
  myQueue.dequeue();
  print("after deleting 2nd front");
  myQueue.display();
  print("the first value is ${myQueue.peek()}");
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? rear;
  Node? front;

  void enqueue(int data) {
    Node? newdata = Node(data);
    newdata.next = null;

    if (front == null && rear == null) {
      front = newdata;
      rear = newdata;
    } else {
      rear!.next = newdata;
      rear = newdata;
    }
  }

  void dequeue() {
    if (rear == null && front == null) {
      print('The queue is empty');
    } else {
      front = front!.next;
    }
  }

  void display() {
    if (rear == null && front == null) {
      print("Queue is empty");
    } else {
      Node? temp = front;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  int? peek() {
    if (rear == null && front == null) {
      print("Queue is empty");
      return null;
    } else {
      return front!.data;
    }
  }
}
