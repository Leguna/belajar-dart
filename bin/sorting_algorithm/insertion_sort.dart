void main(List<String> args) {
  List<int> arr = [2, 31, 2, 3, 12, 41, 5, 7, 345, 34, 7, 23];
  print(insertionSort(arr));
}

List<int> insertionSort(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    var key = arr[i];
    var j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
  return arr;
}
