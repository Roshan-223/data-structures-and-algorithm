import 'singlyLinkedlist.dart';

class Node{
  int?data;
  Node?next;
  Node(this.data);
}
class linkedList{
Node?head,tail;

void addNode(int data){
  if(head==null){
    head=Node(data);
    tail=head;
  }else{
    tail!.next=Node(data);
    tail=tail!.next;
  }
}
void display(){
 int sum=0;
  Node?current=head;
  while(current!=null){
    sum=sum+current.data!;
   current=current.next;
  }
  print('sum$sum');
  
}
}
void main(){
  linkedList list=linkedList();
  list.addNode(10);
  list.addNode(50);
  list.addNode(60);
  list.addNode(40);
  list.addNode(20);
  list.display();
}