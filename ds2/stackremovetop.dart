class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;
  void push(int data) {
    Node? NewNode = Node(data);
    if (top == null) {
      top = NewNode;
    } else {
      NewNode.next = top;
      top = NewNode;
    }
  }

  void pop() {
    if(top==null){
      print('Stack underflow');
      return;
    }
    top=top!.next;
  }
  void display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.display();
  // print('------');
  // stack.pop();
  // stack.display();
}
