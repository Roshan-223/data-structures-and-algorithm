// int binearysearch(List<int>array,int target){
//   int left=0;
//   int right=array.length-1;

//   while(left<=right){
//     int mid=(left+right)~/2;
//     if(array[mid]==target){
//       return mid;
//     }
//     if(array[mid]>target){
//        right=mid-1;
//     }else{
//       left=mid+1;
//     }
//   }
//  return 0;
// }
// void main(){
//   List<int>array=[2,3,6,7,8,9,10];
//   int target=9;
//   int index=binearysearch(array, target);
//   if(index>=0){
//     print('element$target found at index$index');
//   }
// }

int binarySearchRecursive(List<int> array, int target, int left, int right) {
  if (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (array[mid] == target) {
      return mid; // Element found, return the index.
    } else if (array[mid] > target) {
      return binarySearchRecursive(array, target, left, mid - 1); // Search the left half.
    } else {
      return binarySearchRecursive(array, target, mid + 1, right); // Search the right half.
    }
  }

  return -1; // Element not found, return -1.
}

void main() {
  List<int> array = [2, 3, 6, 7, 8, 9, 10];
  int target = 9;
  
  int index = binarySearchRecursive(array, target, 0, array.length-1);
}