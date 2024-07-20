void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // Swap the elements
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
     print(arr);
        
      }
    }
   
  }
}

void main() {
  List<int> arr = [64, 34, 25, 11];
  print("Original Array: $arr");

  bubbleSort(arr);
  
 print("Sorted Array: $arr");
}





