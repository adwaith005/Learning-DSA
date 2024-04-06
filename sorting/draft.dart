void main(){
  var stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  var reversedStack = reverseStack(stack);
}

class Stack{
  List elements =[];

  void push (dynamic element){
    elements.add(element);
  }

  void pop(){
    if(elements.isEmpty) {
      return null;
    }else{
      return elements.removeLast();
    }
  }
  bool get isEmpty => elements.isEmpty;
}

Stack reverseStack(Stack stack){
  reverseStack.push(stack.pop());
}