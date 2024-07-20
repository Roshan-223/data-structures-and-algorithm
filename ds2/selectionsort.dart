// void selectionSort(List<int> arr) {
//   int n = arr.length;
//   for (int i = 0; i < n - 1; i++) {
//     int minIndex = i;
//     for (int j = i + 1; j < n; j++) {
//       if (arr[j] < arr[minIndex]) {
//         minIndex = j;
//       }
//     }
  
//     int temp = arr[i];
//     arr[i] = arr[minIndex];
//     arr[minIndex] = temp;
  
//   }
// }

// void main() {
//   List<int> arr = [64, 34, 25, 12, 22];
//   print("Original Array: $arr");

//   selectionSort(arr);
  
//   print("Sorted Array: $arr");
// }






import 'dart:io';

void main(){
 int limit=10;
  int sum =0;
  for(int i=1;i<=limit;i+=2){
    sum=sum+i;
  }
  print('Sum of odd numbers =$sum');
}




















