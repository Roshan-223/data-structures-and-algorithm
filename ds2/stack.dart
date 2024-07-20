
class Node{
  int?data;
  Node?next;
  
  Node(this.data);

}

class Stack{ 
  Node?top;

  void push(int data){
    Node? Newnode=Node(data);
    if(top==null){
      top = Newnode;
    }else{
      Newnode.next=top;
      top=Newnode;
    }
  } 
  void pop(){
    if(top==null){
      print('stack underflow');
      return;
    }
    top=top!.next;
  }
  int? peek(){
  if(top == null){
    return null;
  }
  return top!.data;
  }


  void display(){
    Node?current=top;
    while(current!=null){
      print(current.data);
      current=current.next;
    }

  }
  void display1(){
    Node?current=top;
    List<int>Stackar=[];
    while(current!=null){
      Stackar.add(current.data!);
      current=current.next;
    }
    for(int i=Stackar.length-1;i>=0;i--){
      print(Stackar[i]);
    }
  }

}
void main(){
  Stack stack=Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  // stack.pop();

  // int ?topElement=stack.peek();
  // print('top element:$topElement');
  stack.display();
  print('-----');
  stack.display1();
  
  
}






















// class Node{
//   int?data;
//   Node?next;
  
//   Node(this.data);

// }

// class Stack{
//   Node?top;

//   void push(int data){
//     Node? Newnode=Node(data);
//     if(top==null){
//       top = Newnode;
//     }else{
//       Newnode.next=top;
//       top=Newnode;
//     }
//   } 
//   void pop(){
//     if(top==null){
//       print('stack underflow');
//       return;
//     }
//     top=top!.next;
//   }
  

//   void display(){
//     Node?current=top;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }

//   }

// }
// void main(){
//   Stack stack=Stack();
//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   stack.push(4);

//    stack.display();
// }


// void deleteMiddleStack(List<int> arr) {
//   List<int> arr1 = [];
//   int mid = arr.length ~/ 2;
//   int n = arr.length - 1;
//   while (n > mid) {
//     arr1.add(arr[n]);
//     arr.removeAt(n);
//     n--;
//   }
//   arr.removeAt(n);
//   int n2 = arr1.length - 1;
//   while (n2 >= 0) {
//     arr.add(arr1[n2]);
//     arr1.removeAt(n2);
//     n2--;
//   }

//   print("Middle element Deleted Stack is: $arr");
// }

// void main() {
//   List<int> arr = [5, 4, 3, 7, 8];
//   deleteMiddleStack(arr);
// }
