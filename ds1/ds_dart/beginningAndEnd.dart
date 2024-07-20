class Node{
  int?data;
  Node?next;
  Node(this.data);
}
class LinkedList{
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
  //beginning
  void beginning(int data){
    if(head==null){
      head=Node(data);
      tail=head;
    }else{
      Node?NewNode=Node(data);
      NewNode.next=head;
      head=NewNode;
    }

  }
  //end
  void end(int data){
  Node?Node1=Node(data);
  if(tail!.next==null){
    tail!.next=Node1;
    tail=Node1;

  } 
  }

  void display(){
    Node?current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  LinkedList list=LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.display();

print("after beginning and end add");
  list.beginning(70);
  list.end(90);
  
  list.display();

}