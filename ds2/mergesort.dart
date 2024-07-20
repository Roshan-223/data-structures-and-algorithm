void mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return;
  }

  int mid = arr.length ~/ 2;

  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  mergeSort(left);
  mergeSort(right);

  merge(arr, left, right);
}

void merge(List<int> arr, List<int> left, List<int> right) {
  int i = 0; // Index for left sublist
  int j = 0; // Index for right sublist
  int k = 0; // Index for the merged array

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      arr[k] = left[i];
      i++;
    } else {

    
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  // Copy any remaining elements from left and right sublists
  while (i < left.length) {
    arr[k] = left[i];
    i++;
    k++;
  }

  while (j < right.length) {
    arr[k] = right[j];
    j++;
    k++;
  }
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];

  print("Original array: ${arr}");
  mergeSort(arr);
  print("Sorted array: ${arr}");
}