void main(List<String> args) {
  var list = [64, 34, 25, 12, 22, 11, 90];
  print(bubbleSort(list));
}

bubbleSort(List<int> unsortedList) {
  for (var i = 0; i < unsortedList.length; i++) {
    for (var j = 0; j < (unsortedList.length - i - 1); j++) {
      if (unsortedList[j] > unsortedList[j + 1]) {
        int temp = unsortedList[j];
        unsortedList[j] = unsortedList[j + 1];
        unsortedList[j + 1] = temp;
      }
    }
  }
  return unsortedList;
}
