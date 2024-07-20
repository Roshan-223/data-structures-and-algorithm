// class Node{
//   int?data;
//   Node?next;
//   Node(this.data);
// }
// class Stack{
//   Node?top;

//   void push(int data){
//     Node?NewNode=Node(data);
//     if(top==null){
//       top=NewNode; 
//     }else{
//       NewNode.next=top;
//       top=NewNode;
//     }
//   }
//   void pop(){
//     if(top==null){
//       print('stack underflow');
//       return;
//     }else{
//       top=top!.next;
//     }
//   }
//   void display(){
//     Node?current=top;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
//   }
//   void display1(){
//     Node?current=top;
//     List<int>stackar=[];
//     while(current!=null){
//     stackar.add(current.data!);
//     current=current.next;
//     }
//     for(int i=stackar.length-1;i>=0;i--){
//       print(stackar[i]);
//     }
//   }

//   }

// void main(){
//   Stack stack=Stack();
//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   stack.push(4);
//   stack.push(5);
// stack.display();
// print('----------');
//   stack.pop();
// //  stack.display();
// stack.display1();

// }






// class Node{
//   int?data;
//   Node?next;

//   Node(this.data);
// }
// class Queue{
//   Node?front,rear;
//   void enqueue(int data){
//     Node?NewNode=Node(data);
//     if(rear==null){
//       front=NewNode;
//       rear=front;
//       return;
//     }else{
//      rear!.next=NewNode;
//      rear=NewNode;
//     }
//   }
//   void dequeue(){
//     if(front==null){
//       print('empty');
//       return;
//     }
//     front=front!.next;
//   }
//   void display(){
//     Node?current=front;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
//   }
  // void specificposition(int target,int data){
  //   Node?NewNode=Node(data);
  //   Node?current=front;
  //   while(current!=null){
  //     if(current.data==target){
  //       NewNode.next=current.next;
  //       current.next=NewNode;
  //     }
  //     current=current.next;
  //   }
  // }
  // void even(){
  //   Node?current=front;
  //   while(current!=null){
  //     if(current.data!%2==0){
  //       print(current.data);

  //     }
  //     current=current.next;
  //   }
  // }
  // void addbefore(int data){
  //   Node?NewNode=Node(data);
  //   NewNode.next=front;
  //   front=NewNode;
//   // }
// }

// void main(){
//   Queue queue=Queue();
//   queue.enqueue(1);
//   queue.enqueue(12);
//   queue.enqueue(13);
//   queue.enqueue(14);
//   queue.enqueue(30);
//   queue.display();
//    print('-------');
  //  queue.specificposition(13, 44);
  // queue.even();
  //  queue.display();
  //  queue.addbefore(22);
  //  queue.display();
  // queue.dequeue()
  // queue.display();
// }




// class Stack {
//   List<dynamic> stack = [];

//   void push(dynamic value) {
//     stack.add(value);
//   }

//   dynamic pop() {
//     if (stack.isEmpty) {
//       return null;
//     }
//     return stack.removeLast();
//   }

//   void deleteMiddle() {
//     int middleIndex = stack.length ~/ 2; // Find the middle index
//     stack.removeAt(middleIndex); // Remove the middle element
//   }

//   dynamic getMiddle() {
//     if (stack.isEmpty) {
//       return null;
//     }
//     int middleIndex = stack.length ~/ 2; // Find the middle index
//     return stack[middleIndex]; // Return the middle element
//   }
// }

// void main() {
//   Stack stack = Stack();

//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   stack.push(4);
//   stack.push(5);


//   print("Stack: ${stack.stack}"); // [1, 2, 3, 4, 5]
//   print("Middle Element: ${stack.getMiddle()}"); // 3

//   stack.deleteMiddle();
//   print("Stack after deleting middle element: ${stack.stack}"); // [1, 2, 4, 5]
//   // print("Middle Element after deletion: ${stack.getMiddle()}"); // 4
 

// }



