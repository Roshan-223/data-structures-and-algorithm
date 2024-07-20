// class MaxHeap {
//   List<int> heap = [];

//   void insert(int value) {
//     heap.add(value);
//     _heapifyUp(heap.length - 1);
//   }

//   void _heapifyUp(int index) {
//     while (index > 0) {
//       int parentIndex = (index - 1) ~/ 2;
//       if (heap[parentIndex] < heap[index]) {
//         // Swap the parent and current node
//         int temp = heap[parentIndex];
//         heap[parentIndex] = heap[index];
//         heap[index] = temp;
//         index = parentIndex;
//       } else {
//         break;
//       }
//     }
//   }
//   void deleteMax() {
//     if (heap.isEmpty) {
//       throw Exception("Heap is empty");
//     }
//     // Replace the root with the last element
//     heap[0] = heap[heap.length - 1];
//     heap.removeLast();

//     // Restore the max heap property
//     _heapifyDown(0);
//   }
//   void _heapifyDown(int index) {
//     int leftChildIndex = 2 * index + 1;
//     int rightChildIndex = 2 * index + 2;
//     int largestIndex = index;

//     if (leftChildIndex < heap.length &&
//         heap[leftChildIndex] > heap[largestIndex]) {
//       largestIndex = leftChildIndex;
//     }

//     if (rightChildIndex < heap.length &&
//         heap[rightChildIndex] > heap[largestIndex]) {
//       largestIndex = rightChildIndex;
//     }

//     if (largestIndex != index) {
//       // Swap the current node with the largest child
//       int temp = heap[index];
//       heap[index] = heap[largestIndex];
//       heap[largestIndex] = temp;

//       // Recursively heapify down the affected subtree
//       _heapifyDown(largestIndex);
//     }
//   }
// }
//  void main() {
//   MaxHeap maxHeap = MaxHeap();

//   maxHeap.insert(5);
//   maxHeap.insert(10);
//   maxHeap.insert(3);
//   maxHeap.insert(8);
//   maxHeap.insert(1);

//   print("Max heap elements: ${maxHeap.heap}");

//   maxHeap.deleteMax();
//   print("After deleteMax, heap elements: ${maxHeap.heap}");
// }



// heap max trial


// class MaxHeap{
//   List<int>heap=[];

//   void insert(int value){
//     heap.add(value);
//     _heapifyUp(heap.length-1);
//   }
//   void _heapifyUp(int index){
//     while(index>0){
//       int parentIndex=(index-1)~/2;
//       if(heap[parentIndex]<heap[index]){
//     int temp=heap[parentIndex];
//     heap[parentIndex]=heap[index];
//     heap[index]=temp;
//     index=parentIndex;
//       }else{
//         break;
//       }
//     }
//   }
//   void deleteMax(){
//     if(heap.isEmpty){
//       throw Exception('heap is empty');
//     }
//     heap[0]=heap[heap.length-1];
//     heap.removeLast();
//   _heapifyDown(0);
//   }
//   void _heapifyDown(int index){
//     int leftChildIndex=2*index+1;
//     int rightChildIndex=2*index+2;
//     int largestIndex=index;
//     if(leftChildIndex < heap.length && heap[leftChildIndex]> heap[largestIndex]){
//       largestIndex=leftChildIndex;
//     }
//     if(rightChildIndex < heap.length&& heap[rightChildIndex]>heap[largestIndex]){
//       largestIndex=rightChildIndex;
//     }
//     if(largestIndex !=index){
//       int temp=heap[index];
//       heap[index]=heap[largestIndex];
//       heap[largestIndex]=temp;

//       _heapifyDown(largestIndex);
//     }
//   }
// }
// void main(){
//   MaxHeap maxHeap=MaxHeap();
//   maxHeap.insert(5);
//   maxHeap.insert(10);
//   maxHeap.insert(3);
//   maxHeap.insert(8);
//   maxHeap.insert(1);
//   print('max heap elements:${maxHeap.heap}');
//   // print('Max:n ${maxHeap.heap[0]}');
//   maxHeap.deleteMax();
//   print("after deleteMax, heap elements:${maxHeap.heap}");
// }



// class MaxHeap{
//   List<int>heap=[];
  
//   void insert(int value){
//     heap.add(value);
//     _heapifyUp(heap.length-1);
//   }
//   void _heapifyUp(int index){
//     while(index>0){
//       int parentIndex=(index-1)~/2;
//       if(heap[parentIndex]<heap[index]){
//         int temp=heap[parentIndex];
//         heap[parentIndex]=heap[index];
//         heap[index]=temp;
//         index=parentIndex;
//       }else{
//         break;
//       }
//     }
//   }
//  void deleteMax(){
//   if(heap.isEmpty){
//     throw Exception("heap is empty");
//   }
//   heap[0]=heap[heap.length-1];
//   heap.removeLast();
//   _heapifyDown(0);
//  }
//  void _heapifyDown(int index){
//    int leftChildIndex=2*index+1;
//    int rightChildIndex=2*index+2;
//    int largestIndex=index;
//    if(leftChildIndex<heap.length && heap[leftChildIndex]>heap[largestIndex]){
//     largestIndex=leftChildIndex;
//    }
//    if(rightChildIndex<heap.length && heap[rightChildIndex]>heap[largestIndex]){
//     largestIndex=rightChildIndex;
//    }
//    if(largestIndex!=index){
//     int temp=heap[index];
//     heap[index]=heap[largestIndex];
//     heap[largestIndex]=temp;

//     _heapifyDown(largestIndex);
//    }
//  }
// }
// void main(){
//   MaxHeap maxHeap=MaxHeap();
//   maxHeap.insert(5);
//   maxHeap.insert(10);
//   maxHeap.insert(3);
//   maxHeap.insert(8);
//   maxHeap.insert(1);
//   print('max heap elements:${maxHeap.heap}');
//   print('max element :${maxHeap.heap[0]}');
//   maxHeap.deleteMax();
//   print('after deleteMax, heap elements:${maxHeap.heap}');
// }


// heap min



class MinHeap{
List<int>heap=[];

void insert(int value){
  heap.add(value);
  _heapifyUp(heap.length-1);
}
void _heapifyUp(int index){
  while(index>0){
    int parentIndex=(index-1)~/2;
    if(heap[parentIndex]>heap[index]){
      int temp=heap[parentIndex];
      heap[parentIndex]=heap[index];
      heap[index]=temp;
      index=parentIndex;
    }else{
      break;
    }
  }
}
void deleteMin(){
  if(heap.isEmpty){
    throw Exception('heap is empty');
  }
  heap[0]=heap[heap.length-1];
  heap.removeLast();
  _heapifyDown(0);
}
void _heapifyDown(int index){
  int leftChildIndex=2*index+1;
  int rightChildIndex=2*index+2;
  int smallestIndex=index;
  int heapLength=heap.length;

  if(leftChildIndex<heapLength && heap[leftChildIndex]<heap[smallestIndex]){
    smallestIndex=leftChildIndex;
  }

  if(rightChildIndex<heapLength && heap[rightChildIndex]<heap[smallestIndex]){
  smallestIndex=rightChildIndex;
  }
  if(smallestIndex !=index){
    int temp=heap[index];
    heap[index]=heap[smallestIndex];
    heap[smallestIndex]=temp;

    _heapifyDown(smallestIndex);
  }
}
}
void main(){
  MinHeap minHeap=MinHeap();
  minHeap.insert(5);
  minHeap.insert(10);
  minHeap.insert(3);
  minHeap.insert(8);
  minHeap.insert(1);

  print('min heap elements:${minHeap.heap}');
  print('min element:${minHeap.heap[0]}');

  minHeap.deleteMin();
  print('after deleteMin, heap elements:${minHeap.heap}');
}