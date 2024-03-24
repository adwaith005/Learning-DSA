void main() {
  Stack stack = Stack();
  stack.push(1);
}

class Node {
  dynamic data;
  Node?next;
  Node? link;
  
  Node(int data);
}

class Stack {
  Node? top = null;

  void push(int data){
    Node? newdata = Node(data);
    newdata.next =top;
    top = newdata;
  }


  void display (){
    Node? temp = top;
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }
}
