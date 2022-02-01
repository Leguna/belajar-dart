List<int> mergeSortRecursive(List<int> unSortedList) {
  if (unSortedList.length <= 1) {
    return unSortedList;
  }

  var middleIndex = (unSortedList.length ~/ 2);

  var leftList = mergeSortRecursive(unSortedList.sublist(0, middleIndex));
  var rightList = mergeSortRecursive(unSortedList.sublist(middleIndex));

  List<int> sortedList = [];

  var leftIndex = 0;
  var rightIndex = 0;

  while (leftIndex < leftList.length && rightIndex < rightList.length) {
    if (leftList[leftIndex] < rightList[rightIndex]) {
      sortedList.add(leftList[leftIndex]);
      leftIndex++;
    } else {
      sortedList.add(rightList[rightIndex]);
      rightIndex++;
    }
  }

  sortedList += leftList.sublist(leftIndex);
  sortedList += rightList.sublist(rightIndex);
  return sortedList;
}

void main(List<String> args) {
  var list = [121, 1, 312, 63, 4, 3, 4, 10, 5, 122];
  print(mergeSortRecursive(list));
}
