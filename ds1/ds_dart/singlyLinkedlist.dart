class Node{
  int?data;
  Node?next;
  Node(this.data);
}
class LinkedList{
  Node?head;
  Node?tail;

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
    if(head==null){
      print("empty");
       return;
    }
    
    Node?current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
  
  
}
void main(){
  LinkedList list=LinkedList();
  list.addNode(1);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);

  list.display();

}

