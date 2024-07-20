// void _heapifyDown(int index) {
//   int leftChildIndex = 2 * index + 1;
//   int rightChildIndex = 2 * index + 2;
//   int largestIndex = index;

//   if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[largestIndex]) {
//     largestIndex = leftChildIndex;
//   }

//   if (rightChildIndex < heap.length && heap[rightChildIndex] > heap[largestIndex]) {
//     largestIndex = rightChildIndex;
//   }

//   if (largestIndex != index) {
//     // Swap the current node with the largest child
//     int temp = heap[index];
//     heap[index] = heap[largestIndex];
//     heap[largestIndex] = temp;

//     // Recursively heapify down the affected subtree
//     _heapifyDown(largestIndex);
//   }
// }
