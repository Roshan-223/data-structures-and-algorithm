class Node{
  int?data;
  Node?next;

  Node(this.data);
}
class Linkedlist{
  Node?head,tail;

  void addNodes(int data){
   if(head==null){
    head=Node(data);
    tail=head;
   }else{
    tail!.next=Node(data);
    tail=tail!.next;
   }
  }
  //add before 
  void addbefore(int data){
 Node?newNode=Node(data);
 newNode.next=head;
 head=newNode;
  }
  //insert end
  void insertEnd(int data){
    Node?NewNode1=Node(data);
    if(tail!.next==null){
     tail!.next=NewNode1;
     tail=NewNode1;
      }
    
  }
  void insertspecific(int target,int data){
    Node?NewNode2=Node(data);
    Node?current=head;
    while(current!=null){
      if(current.data==target){
        
        NewNode2.next=current.next;
        current.next=NewNode2;

      }
      current=current.next;
    }
  }

  void display(){
    if(head==null){
      print('empty');
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
Linkedlist list=Linkedlist();
list.addNodes(10);
list.addNodes(20);
list.addNodes(30);
list.addNodes(40);

list.display();
print('before');
list.addbefore(110);
list.display();
print("end");
list.insertEnd(220);
list.display();
print('insert specific position');
list.insertspecific(30, 390);
list.display();
}