class Node{
  int?data;
  Node?next;
}
class Linkedlist{
  Node?head,tail;

  void addNode(int data){
    if(head==null){
    head=Node();
   tail=head; 
    }else{
      tail!.next=Node();
      tail=tail!.next;
    }
  }
  void delete(){
    Node?current=head;
   if(tai
  }
  
  }
