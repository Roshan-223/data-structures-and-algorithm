import 'arraystack.dart';

class Node{
  int?data;
  Node?next;
  Node(this.data);
}
class Queue{
  Node?front;
  Node?rear;

  void enqueue(int data){ 
  Node?NewNode=Node(data);
  if(rear==null){
    front=rear=NewNode;
    return;
  }
  rear!.next=NewNode;
  rear=NewNode   ;

  }
  void dequeue(){
 if(front==null){
  print('empty');
  return;
 }else{
 front=front!.next;
 }
 if(front==null){
  rear=null;
 }
  }
  int? peek(){
    if(front == null){
      return 0;
    }
    return front!.data;
  }
  void display(){
    Node?current=front;
    if(front==null){
      print('empty');
      return;
    }
   
    while(current!=null){
      print(current.data);
      current=current.next;
    }

  }
  void queuereverse(){
    Node?current=front;
    List<int>qr=[];
    while(current!=null){
      qr.add(current.data!);
      current=current.next;
    }
    for(int i=qr.length-1;i>=0;i--){
      print(qr[i]);
    }
  }

  }

void main(){
  Queue queue=Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.display();
  // int? front=queue.peek();
  // print('top element:$front');
  // print('deque');
  // queue.dequeue();

  // queue.display(); 
  print('----');
 queue.queuereverse();
 
}

