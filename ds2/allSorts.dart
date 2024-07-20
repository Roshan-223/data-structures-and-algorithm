// bubble sort

// void bubbleSort(List<int>ar){
//   int n=ar.length-1;
//   for(int i=0;i<n;i++){
//     for(int j=0;j<n;j++){
//       if(ar[j]>ar[j+1]){
//         int temp=ar[j];
//         ar[j]=ar[j+1];
//         ar[j+1]=temp;
//       }
//     }
//   }
// }
// void main(){
//   List<int>ar=[64,34,25,11,1,8];
//   print('og:$ar');
//   bubbleSort(ar);
//   print('sorted array:$ar'); 
// }



//selection sort


// void selectionSort(List<int>ar){
//   int n=ar.length;

//   for(int i=0;i<n;i++){
//     int minindex=i;
//     for(int j=i+1;j<n;j++){
//    if(ar[j]<ar[minindex]){
//      minindex=j;
//    }
//     }
//     int temp=ar[i];
//     ar[i]=ar[minindex];
//     ar[minindex]=temp;
//   }
// }
// void main(){
//   List<int>ar=[64,34,2,8,11];
//   print('original array:$ar');

//   selectionSort(ar);
//   print('sorted array:$ar');
// }


// insertion sort 

// void insertionsort(List<int>ar){

//  int n=ar.length-1;
 
 
//   for(int i=1;i<n;i++){
//   int temp=ar[i];
//   int j=i-1;
  
//   while(j>=0 && ar[j]>temp){
//     ar[j+1]=ar[j];
//     j--;
//   }
//   ar[j+1]=temp;
//  }
// } 
// void main(){
//   List<int>ar=[64,34,22,2,11];
//   print('og array:$ar');
//   insertionsort(ar);
//   print('sorted array:$ar');
// }


void quicksort(List<int>ar){
  
}