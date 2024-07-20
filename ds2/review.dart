void selectionSortMiddle(List<int> arr, int start, int end) {
  for (int i = start; i <= end; i++) {
    int minIndex = i;
    for (int j = i + 1; j <= end; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
}

void main() {
  List<int> array = [5, 3, 8, 2, 1, 4, 7, 6, 9, 10, 15, 12, 11, 14, 13];

  int middleStart = (array.length - 10) ~/ 2;
  int middleEnd = middleStart + 9;

  selectionSortMiddle(array, middleStart, middleEnd);

  print("Sorted middle elements: $array");
}



// arr[4,5,6,7,8,9];
// arr2[3,2,1];



// void main() {
//   List<int> arr1 = [4, 5, 6, 7, 8, 9];
//   List<int> arr2 = [3, 2, 1];

//   for (int i = 0; i < arr1.length; i++) {
//     for (int j = i; j < arr2.length; j++) {
//       print('${arr2[j]} + ${arr1[i]} = ${arr2[j] + arr1[i]}');
//     }
//   }
// }

