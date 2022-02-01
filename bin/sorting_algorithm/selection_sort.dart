void main(List<String> args) {
  print(
      selectionSort([12, 3123, 1, 21, 92, 23, 5, 45, 6, 4, 67, 56723, 13, 78]));
}

selectionSort(List<int> list) {
  for (var i = 0; i < list.length - 1; i++) {
    int min = i;
    for (var j = i + 1; j < list.length; j++) {
      if (list[min] > list[j]) {
        min = j;
      }
    }
    if (min != i) {
      var temp = list[min];
      list[min] = list[i];
      list[i] = temp;
    }
  }
  return list;
}
