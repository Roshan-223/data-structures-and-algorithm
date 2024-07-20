// class Node{
//   int?data;
//   Node?next;
//   Node(this.data);
// }
// class LinkedList{
//   Node?head;
//   Node?tail;

//   void addNode(int data){
//   if(head==null){
//     head=Node(data);
//     tail=head;
//   }else{
//     tail!.next=Node(data);
//     tail=tail!.next;
//   }
//   }
//   void removeduplicates(){
//   if(head==null){
//     return;
//   }
//   Node?current=head;
//   while(current!.next!=null){
//   if(current.data==current.next!.data){
//    current.next=current.next!.next;
// }else{
//   current=current.next;
// }
//   }
//   }
   
//   void display(){
//     if(head==null){
//       print("empty");
//        return;
//     }
//     Node?current=head;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
//   }
  
  
// }
// void main(){
//   LinkedList list=LinkedList();
//   list.addNode(10);
//   list.addNode(20);
//   list.addNode(20);
//   list.addNode(40);
//   list.addNode(40);
//   list.addNode(50);
//  print('original linkedlist');
//   list.display();

//   list.removeduplicates();
//   print('/n after removing:');
//   list.display();

// }



