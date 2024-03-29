class CircularQueue {
  late List<dynamic> _queue;
  late int _front;
  late int _rear;
  late int _size;
  late int _capacity;

  CircularQueue(int capacity)
      : _queue = List.filled(capacity, null),
        _capacity = capacity,
        _front = -1,
        _rear = -1,
        _size = 0;

  bool isEmpty() {
    return _size == 0;
  }

  bool isFull() {
    return _size == _capacity;
  }

  void enqueue(dynamic item) {
    if (isFull()) {
      print("Queue is full. Cannot enqueue.");
      return;
    }

    if (_front == -1) {
      _front = 0;
    }
    _rear = (_rear + 1) % _capacity;
    _queue[_rear] = item;
    _size++;
  }

  dynamic dequeue() {
    if (isEmpty()) {
      print("Queue is empty. Cannot dequeue.");
      return null;
    }
    print("the rear is$_rear ");
    print("the front is$_front ");

    dynamic item = _queue[_front];
    _queue[_front] = null;
    if (_front == _rear) {
      _front = -1;
      _rear = -1;
    } else {
      _front = (_front + 1) % _capacity;
    }

    _size--;
    return item;
  }

  void display() {
    if (isEmpty()) {
      print("Queue is empty.");
      return;
    }

    int index = _front;
    while (index != _rear) {
      print(_queue[index]);
      index = (index + 1) % _capacity;
    }
    print(_queue[_rear]);
  }
}

void main() {
  CircularQueue queue = CircularQueue(5);

  queue.enqueue(9);
  queue.enqueue(8);
  queue.enqueue(6);
  queue.enqueue(7);
  queue.enqueue(5);

  queue.display();

  print("Dequeued item: ${queue.dequeue()}");
  print("Dequeued item: ${queue.dequeue()}");

  queue.display();

  queue.enqueue(6);
  queue.enqueue(7);

  queue.display();
}
