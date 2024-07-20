// class Node {
//   dynamic data;
//   Node? next;
  
//   Node(this.data);
// }

// Node? arrayToLinkedList(List<dynamic> array) {
//   if (array.isEmpty) {
//     return null;
//   }
  
//   Node? head = Node(array[0]);
//   Node? currentNode = head;
  
//   for (int i = 0; i < array.length-1; i++) {
//     Node newNode = Node(array[i]);
//     currentNode!.next = newNode;
//     currentNode = newNode;
//   }
  
//   return head;
// }

// void main() {
//   List<dynamic> array = [1,2,3,4,5];
  
//   Node? linkedList = arrayToLinkedList(array);
  
//   // Printing the linked list
//   Node? currentNode = linkedList;
//   while (currentNode != null) {
//     print(currentNode.data);
//     currentNode = currentNode.next;
//   }
// }

// void display(){
//   int count=0;
//   Node?current=head;
//   while(current!=null){
//     if(count%2==0){
//     print(current.data);
//   }
//   count++;
//   current=current.next;
//   }
// }