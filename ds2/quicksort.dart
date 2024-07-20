

// void quickSort(List<int> arr, int low, int high) {
//   if (low < high) {
//     // Partition the array into two halves and get the pivot index
//     int pivotIndex = partition(arr, low, high);

//     // Recursively sort the left and right halves of the array
//     quickSort(arr, low, pivotIndex - 1);
//     quickSort(arr, pivotIndex + 1, high);
//   }
// }
// int partition(List<int> arr, int low, int high) {
//   int pivot = arr[high];
//   int i = low - 1;

//   for (int j = low; j < high; j++) {
//     if (arr[j] < pivot) {
//       i++;
//       swap(arr, i, j);
//     }
//   }

//   swap(arr, i + 1, high);
//   return i + 1;
// }
// void swap(List<int> arr, int i, int j) {
//   int temp = arr[i];
//   arr[i] = arr[j];
//   arr[j] = temp;
// }
// void main() {
//   List<int> arr = [64, 34, 25, 12, 22, 11, 90];

//   print("Original array: ${arr}");
//     quickSort(arr, 0, arr.length-1);           
//   print("Sorted array: ${arr}");
// }






//second method of quick sort


// int partition(List<int> arr, int lb, int ub) {
//   int pivot = arr[lb];
//   int start = lb;
//   int end = ub;

//   while (start <= end) {
//     while (start <= end && arr[start] <= pivot) {
//       start++;
//     }
//     while (arr[end] > pivot) {
//       end--;
//     }
//     if (start < end) {
//       int temp = arr[start];
//       arr[start] = arr[end];
//       arr[end] = temp;
//     }
//   }
//   int temp = arr[lb];
//   arr[lb] = arr[end];
//   arr[end] = temp;
//   return end;
// }

// void quickSort(List<int> arr, int lb, int ub) {
//   if (lb < ub) {
//     int loc = partition(arr, lb, ub);
//     quickSort(arr, lb, loc - 1);
//     quickSort(arr, loc + 1, ub);
//   }
// }

// void main() {
//   List<int> array = [7, 6, 10, 5, 9, 2, 1, 15, 7];

//   print('Original array: $array');
 
//   quickSort(array,0,array.length-1);
//   print('Sorted list: $array');
// }



// int partition(List<int>arr, int lb, int ub){
//   int pivot=arr[lb];
//   int start=lb;
//   int end=ub;

//   while(start<=end){
//     while(start<=end && arr[start]<=pivot){
//       start++;
//     }
//     while(arr[end]>pivot){ 
//       end--;
//     }
//     if(start<end){
//       int temp=arr[start];
//       arr[start]=arr[end];
//       arr[end]=temp;
//     }
//   }
//   int temp=arr[lb];
//   arr[lb]=arr[end];
//   arr[end]=temp;
//   return end;
// }
// void quicksort(List<int>arr,int lb,int ub){
// if(lb<ub){
//   int loc=partition(arr, lb, ub);        
//   quicksort(arr, lb, loc-1);
//   quicksort(arr, loc+1, ub);
// }
// }
// void main(){
//   List<int>array=[7,6,10,5,9,2,1,15,7];
//   print('original array:$array');

//   quicksort(array, 0, array.length-1);
//   print('sorted array:$array');
// }


// void main(){

// List<int>ar=[1,2,3,66,50];

//   int largest = ar[0];
//   int secondLargest = ar[0]; // Initialize with the first element

//   for (int i = 0; i < ar.length; i++) {
//     if (ar[i] > largest) {
//       secondLargest = largest; // Update secondLargest with previous largest
//       largest = ar[i]; // Update largest
//     } else if (ar[i] > secondLargest && ar[i] < largest) {
//       secondLargest = ar[i]; // Update secondLargest
//     }  
//   }

//   print("The second largest element is: $secondLargest");
// }
  


// void main(){
// List<int>ar=[10,2,1,4,6,7,3];
// int count =0;
// for(int i=0;i<ar.length;i++){
//   if(ar[i]%2==0){
//     if(count %2==0){
        
//   print(ar[i]);
//     }
//     count++;
  
//   }
// }  
//  }

// void main(){
//   List<int>ar=[4,1,2];
//   List<int>ar1=[5,3,8];
//  int j=ar1.length-1;
//  for(int i=0;i<ar.length;i++){
//  while(ar1[j]!=0){
//   print(ar[i]);
//   ar1[j]=ar1[j]-1;
//  }
//  }
//  j--;
// }
// void main(){
//   List<int>ar1=[4,5,6,7,8,9];
//   List<int>ar2=[3,2,1];
//   int j=0;
//   int i=0;
//   while(i<ar1.length-1 && j<ar2.length){
//     print('${ar1[i]+ar2[j]},${ar1[i+1]+ar2[j]}');  
//     i+=2;
//     j++;
//   }
// }    



// void main(){
// List<int>ar=[];
// ar.add(10);
// ar.add(20);
// ar.add(30);
// print(ar);

// }


// sumOfDigits(int num){
//   String str=num.toString();
//   int sum=0;
//   for(int i=0;i<str.length;i++){
//     sum=sum+int.parse(str[i]);
//   }
//   print(sum);
// }
// void main(){
//   int num=246765;
//   sumOfDigits(num);
// }


// void main(){
  // List<int>ar1=[4,1,2];
  // List<int>ar2=[5,3,8];
//   int j=ar2.length-1;
//   for(int i=0;i<ar1.length;i++){
//  while(ar2[j]!=0){
//    print(ar1[i]);
//    ar2[j]=ar2[j]-1;
//  }
//  j--;
//   }
// }

// void main(){
  // List<int>ar1=[4,5,6,7,8,9];
  // List<int>ar2=[3,2,1];
//   int i=0;
//   int j=0;
//   while(i<ar1.length-1 && j<ar2.length){
//     print('${ar1[i]+ar2[j]},${ar1[i+1]+ar2[j]}');
//     i+=2;
//     j++;
//   }

// }

void main(){
    List<int>ar1=[4,1,2];
  List<int>ar2=[5,3,8];
  int j=ar2.length-1;
  for(int i=0;i<ar1.length-1;i++){
    while(ar2[j]!=0){
      print(ar1[i]);
      ar1[j]=ar1[j]-1;
    }
    j--;
  }
}