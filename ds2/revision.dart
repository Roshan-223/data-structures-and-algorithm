
// class Node{

//   int?data;
//   Node?next;

//   Node(this.data);
// }
// class Stack{                                                                    
//   Node?top;
//   void push(int data){
//      Node?NewNode=Node(data);
//     if(top==null){
//       top=NewNode;
     
//     }else{
//       NewNode.next=top;
//       top=NewNode;
//     }
//   }
  
//    pop(){
//     if(top==null){
//       print('underflow');
//       return;
//     }
//     top=top!.next;
//   }
//   int? peek(){
//     if(top==null){
//       return null;
//     }
//     return top!.data;
//   }
//   void display(){
//     Node?current=top;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
//   }
//   void deletemid() {
//     if (top == null) {
//       return;
//     }

//     Node? slow = top;
//     Node? fast = top;
//     Node? prev = null;

//     while (fast != null && fast.next != null) {
//       fast = fast.next!.next;
//       prev = slow;
//       slow = slow!.next;
//     }
// }
//   void reverse(){
//     Stack reverseStack=Stack();
//     while(top!=null){
//       reverseStack.push(peek()!);
//       pop();
//     }
//     top=reverseStack.top;
//   }
//   void aleternativelements(){
//     Node?current=top;
//     int count=0;
//     while(current!=null){
//       if(count%2==0){
//         print(current.data);
//       }
//         count++;
//         current=current.next;
      
//     }
//   }
//   void sum(){
//     Node?current=top;
//     int sum=0;
//     int count=0;
//     while(current!=null && count<5){
//       sum=sum+current.data!;
//       current=current.next;
//       count++;
//     }
//     print('Sum:$sum');
//   }
// }


// void main(){
//    Stack stack=Stack();
//    stack.push(1);
//    stack.push(2);
//    stack.push(3);
//    stack.push(4);
//    stack.push(5);
//    stack.push(6);
//    stack.display();
//    print('---');
//    stack.deletemid();
//    stack.display();
  //  stack.reverse();
  //  stack.display();
  //  stack.aleternativelements();
  //  stack.sum();
   
  //   print('peek');
  //    stack.peek();
  //    stack.pop();
  //   stack.pop();
  //   stack.display();
 
  //  print('after pop');
  //  stack.pop();
  //  stack.display();  
  
// }


// queue

// class Node{
//   int?data;
//   Node?next;
//   Node(this.data);

// }
// class Queue{
//   Node?front;
//   Node?rear;

//   void enqueue(int data){
//     Node?NewNode=Node(data);
//     if(rear == null){
//        front=rear=NewNode;
//       return ;
//     }else{
//      rear!.next=NewNode;
//     rear= NewNode;

//     }

//   }
//   void dequeue(){
//     if(front == null){
//       print('Empty');
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
//   int? peek(){ 
//  if(front == null){
//   print('empty');
//   return null;
//  }
//  return front!.data;
//   }
//   void reverse(){
//     Node?current=front;
//    List<int>queuear=[];
//    while(current!=null){
//   queuear.add(current.data!);
//   current=current.next;
//    }
//    for(int i=queuear.length-1;i>=0;i--){
//     print(queuear[i]);
//    }
//   }
//   void search(int target){
//     if(front==null){
//       print('empty');
//       return;
//     }
//     Node?current=front;
//     while(current!=null){
//       if(current.data==target){
//         print(current.data);
//       }
//       current=current.next;
//     }
//   }   
// }

// void main(){

// Queue queue=Queue();
// queue.enqueue(1);
// queue.enqueue(2);
// queue.enqueue(3);
// queue.enqueue(4);
// queue.enqueue(5);
// queue.display();
// print('-----');
// queue.search(4);

// // int?topElement=queue.peek();
// // print('topElment:$topElement');
// // print('------');
// // queue.dequeue();
// // queue.display();

// // queue.reverse();


// }


