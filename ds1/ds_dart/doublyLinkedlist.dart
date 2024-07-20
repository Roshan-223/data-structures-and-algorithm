// class Node{
//   int?data;
//   Node?next;
//   Node?prev;
//   Node(this.data);
// }
// class doublyLinkedList{
//   Node?head,tail;

// void addNode(int data){
//   if(head==null){
//    head=Node(data);
//    tail=head;
//   }else{
//     Node? newNode=Node(data);
//     tail!.next=newNode;
//     newNode.prev=tail;
//     tail=newNode;
//     tail!.next=null;
//   }
// }
// void display(){
//   if(head==null){
//     print('Empty');
//   return;
//   }
//   Node?current=head;
//  while(current!=null){
//   print(current.data);
//   current=current.next;
//  }
// }
// }
// void main(){
//   doublyLinkedList list1=doublyLinkedList();
//   list1.addNode(10);
//   list1.addNode(20);
//   list1.display();
// }


