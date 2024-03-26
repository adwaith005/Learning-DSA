void main() {
  Queue myqueue = Queue();
  myqueue.enqueue(1);
  myqueue.enqueue(2);
  myqueue.enqueue(3);
  myqueue.enqueue(4);
  print("the peek element is : ${myqueue.peek()}");
}

class Queue {
  List queue = [];

  void enqueue(int data) {
    queue.add(data);
  }

  void dispay() {
    print("the queue elements are :");
    for (var i in queue) {
      print(i);
    }
  }

   peek() {
    if (queue.isEmpty) {
      throw Exception("Queue is null");
    } else {
      return queue.first;
    }
  }
}
