void main() {
  Sl list = Sl();
  list.prepend(3);
  list.prepend(1);
  list.prepend(2);
  list.prepend(5);
}
class Node{
  int data;
  Node? next;
  Node(this.data);
}

class Sl {
 Node? head;

 void prepend(int data){
  Node? newNode = Node(data);
   if(head == null){
    head = newNode;
   }else{
    newNode = head;

   }
 }
}