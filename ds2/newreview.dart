// void bubbleSort(List<int>arr){
//   for(int i=0;i<arr.length-1;i++){
//     for(int j=0;j<arr.length-1;j++){
//       if(arr[j]>arr[j+1]){
//         int temp=arr[j];
//         arr[j]=arr[j+1];
//         arr[j+1]=temp;
//         print(arr);
//       }
//     }
//   }
// }
// void main(){
//   List<int>arr=[64,34,25,88,23];
//   print("original array:$arr");


// }




class Node{
  int?data;
  Node?next;

  Node(this.data);
}
class Stack{
  Node?top;
  void push(int data){
    Node?newNode=Node(data);
    if(top==null){
      top=newNode;
    }else{
      newNode.next=top;
      top=newNode;
    }
  }
  void pop(){
    if(top==null){
      print("stack underflow");
      return;
    }
    top=top!.next;
  }
  void display(){
    Node?current=top;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
  void search(){
    int target=20;
    Node?current=top;
    while(current!.data==target){
   print(current.data);
    }
    c
  }
}