void main() {
  Queue myQueue = Queue();
  myQueue.enqueue(1);
  myQueue.enqueue(2);
  myQueue.enqueue(3);
  myQueue.enqueue(4);
  myQueue.dispay();
  print("Is the queue empty? ${myQueue.isEmpty()}");
  print("Size of queue: ${myQueue.size()}");
  myQueue.clear();
  print("Is the queue empty after clearing? ${myQueue.isEmpty()}");
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

  bool isEmpty() {
    return queue.isEmpty;
  }

  size() {
    if (queue.isEmpty) {
      throw Exception("Stack is empty");
    } else {
      return queue.length;
    }
  }

  clear() {
    if (queue.isEmpty) {
      throw Exception("queue is empty");
    } else {
      queue.clear();
    }
  }
}
