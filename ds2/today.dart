

// class Node{
//  int?data;
//  Node?next;
//  Node(this.data);
// }
// class Stack{
//   Node?top;
//   void push(int data){
//   Node?newNode=Node(data);
//   if(top==null){
//     top=newNode;
//   }else{
//     newNode.next=top;
//     top=newNode;
//   }
//   }
//   void pop(){
//     if(top==null){
//       print('stack under flow');
//       return;
//     }else{
//      top=top!.next;
//     }
//   }
//    int? peek(){
//      if(top==null){
//       return null;
//      }
//      return top!.data;
//     }
//     void reverse(){
//       Stack reverseStack=Stack();
//       while(top!=null){
//         reverseStack.push(peek()!);
//         pop();
//       }
//       top=reverseStack.top;
//     }
//   void display(){
//     Node?current=top;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
   
//   }
//    void sum(){
//       Node?current=top;
//       int count=0;
//       int Sum=0;
//       while(current!=null && count<5 ){         
//       Sum=Sum+current.data!;
//       current=current.next;
//       count++;
//       }
//       print('Sum:$Sum');
//     }
//     void search(){
//       int target=30;
//       Node?current=top;
//       while(current!=null){
//         if(current.data==target){
//          print("target${current.data}found");
//         }
//          current=current.next;
//       }
//     }
//     void Sum(){
//       int Sum=0;
//       Node?current=top;
//       while(current!=null){
//         Sum=Sum+current.data!;
//         current=current.next;
//       }
//       print('Sum:$Sum');
//     }
    
// }
// void main(){
//   Stack stack=Stack();
//   stack.push(10);
//   stack.push(20);
//   stack.push(30);
//   stack.push(40);
//   stack.push(50);
//   stack.push(60);
//   stack.display();
//   int? topElement=stack.peek();
//   print('top element:$topElement');

//   print('-----');
//  stack.reverse();
//  stack.display();
// stack.sum();


// }


//queue


// class Node{
// int?data;
// Node?next;

// Node(this.data);
// }
// class Queue{
//   Node?front,rear;
//   void enqueue(int data){
//     Node?newNode=Node(data);
//     if(rear==null){
//       front=newNode;
//       rear=front;
//       return;
//     }
//     rear!.next=newNode;
//     rear=newNode;
//   }
//   void  dequeue(){
//   if(front==null){
//     print('empty');
//   return;
//   }
// front=front!.next;
// }
// int?peek(){
//   if(front==null){
//   return 0;
//   }
//   return front!.data;
// }
// void display(){
//   Node?current=front;
//   while(current!=null){
//     print(current.data);
//     current=current.next;
//   }
// }
// void search(){
//   int target=30;
//   Node?current=front;
//   while(current!=null){
//     if(current.data==target){
//       print('target${current.data}found');
//     }
//     current=current.next;
//   }
// }
// void alternative(){
//   Node?current=front;
//   int count=0;
//   while(current!=null){
//     if(count%2==0){
//       print(current.data);
//     }
//   count++; 
//   }
// }
// }
// void main(){
// Queue queue=Queue();
// queue.enqueue(10);
// queue.enqueue(20);
// queue.enqueue(30);
// queue.enqueue(40);
// queue.enqueue(1);
// queue.display();
// print('------');
// // queue.dequeue();
// // queue.display(); 

// int?front=queue.peek();
// print('topmost:$front');

// print('-------');


// }             




// stack array


// class stack{
//   List<int>data=[];
//   void push(int value){
//    data.add(value);
//   }
//   void display(){
//     print(data);
//   }
//   void pop(){
//     if(data.isNotEmpty){
//       data.removeLast();
//     }else{
//       print('under flow');
//     }
//   }
//   int?peek(){
//     return data.isNotEmpty?data.last:null;
//   }
//   int?size(){
//     return data.length;
//   }
//   void deletemiddle(){
//     int middleindex=data.length~/2;
//     data.removeAt(middleindex);
//   }
 
// }
// void main(){
//   stack Stack=stack();
//   Stack.push(10);
//   Stack.push(20);
//   Stack.push(30);
//   Stack.push(40);
//   Stack.push(50);
//   Stack.display();
//   // Stack.pop();
//   // Stack.display();  
//   Stack.display();
  
// }


//bubble sort


// void bubblesort(List<int>ar){
// for(int i=0;i<ar.length-1;i++){
//   for(int j=0;j<ar.length-1;j++){
//     if(ar[j]>ar[j+1]){
//      int temp=ar[j];
//      ar[j]=ar[j+1];
//      ar[j+1]=temp;
//     }
//   }
// }
// }
// void main(){
//   List<int>ar=[64,21,34,10];
//   print('original array $ar');

//   bubblesort(ar);
//   print('sorted array:$ar');
// }   



// void selectionSort(List<int>ar){
// for(int i=0;i<ar.length-1;i++){
//   int minindex=i;
//   for(int j=i+1;j<ar.length-1;j++){
//   if(ar[j]<ar[minindex]){
//     minindex=j;
//   }
//   }
 
//   int temp=ar[i];
//   ar[i]=ar[minindex];
//   ar[minindex]=temp;

// }
// }
// void main(){
//   List<int>ar=[64,34,25,12,22,44,33,23,11,18,55,66,44,77,21];
//   print("original array:$ar");

// selectionSort(ar);
//   print("Sorted middle elements:$ar");

// }

// void insertionsort(List<int>ar){
//   for(int i=1;i<ar.length;i++){
//   int temp=ar[i];
//   int j=i-1;
//   while(j>=0 && ar[j]>temp){
//     ar[j+1]=ar[j];
//     j--;
//   }
//   ar[j+1]=temp;
//   }
// }
// void main(){
//   List<int>ar=[43,64,25,12,22,11,90];
//   print("original array:$ar");
//  insertionsort(ar);
//  print("sorted array:$ar"); 
// }

//quick sort



// int partition(List<int>arr,int lb,int ub){
//   int pivot=arr[lb];
//   int start=lb;
//   int end=ub;

//   while(start<end){
//     while(start<=end && arr[start]<=pivot){
//       start++;
//     }
//   while(arr[end]>pivot){
//     end--;
//   }
//   if(start<end){
//     int temp=arr[start];
//     arr[start]=arr[end];
//     arr[end]=temp;
//   }
//   }
//   int temp=arr[lb];
//   arr[lb]=arr[end];
//   arr[end]=temp;
//   return end;
// }
// void quicksort(List<int>arr,int lb,int ub){
//   if(lb<ub){
// int loc=partition(arr, lb, ub);
// quicksort(arr, lb, loc-1);
// quicksort(arr, loc+1, ub);
//   }
// }
// void main(){
//   List<int>array=[7,6,10,5,9,10,15,7];
//   print('original array:$array');
//   quicksort(array, 0, array.length-1);
//   print('sorted array:$array');
// }

// class Stack{
//   List<String>data=[];

//   void push(String value){
//   data.add(value);
//   }
//   void pop(){
//     if(data.isNotEmpty){
//       data.removeLast();
//     }else{
// print("under flow");
//     }
//   }
//   void display(){
//     print(data);
//   }
// }
// String? reverseString(String input){
// Stack<String>stack=Stack<String>();
//  for (var char in input.split('')) {
//     stack.push("hello");
//   }


// }

// void deleteMiddleStack(List<int>arr){
// List<int>arr1=[];
// int mid=arr.length~/2;
// int n=arr.length-1;
// while(n>mid){
//   arr1.add(arr[n]);
//   arr.removeAt(n);
//   n--;
// }
// arr.removeAt(n);
// int n2=arr1.length-1;
// while(n2>=0){
//   arr.add(arr1[n2]);
//   arr1.removeAt(n2);
//   n2--;
// }
// print('middle element Delete stack is :$arr');
// }
// void main(){
//   List<int>arr=[5,4,3,7,8];
//   deleteMiddleStack(arr);
// }

