class Node{
  int?data;
  Node?next;

  Node(this.data);
}
class linkedlist{
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
    if(head==null){
      print("empty");
      return;
    }
    int target=30;
    Node?current=head;
    while(current!=null){
   if(current.data==target){
   print(current.data);
    
  }
   current=current.next;
      
    }
  }

    
      }
  

void main(){
  linkedlist list=linkedlist();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.display();
  

}