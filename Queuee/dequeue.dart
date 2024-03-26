void main() {
  Queue myQueue = Queue();
  myQueue.enqueue(1);
  myQueue.enqueue(2);
  myQueue.enqueue(3);
  myQueue.enqueue(4);
  myQueue.dispay();
  print("Before dequeue");
  myQueue.dequeue();
  print("After dequeue");
  myQueue.dispay();  
}

class Queue {
  List<dynamic> queue = [];

  void enqueue(int data) {
    queue.add(data);
  }

  void dispay() {
    print("the queue elements are :");
    for (var i in queue) {
      print(i);  
    }
  }

  void dequeue() {
    if (queue.isEmpty) {
      throw Exception("queue is null");
    } else {
      return queue.removeAt(0);
    }
  }
}
