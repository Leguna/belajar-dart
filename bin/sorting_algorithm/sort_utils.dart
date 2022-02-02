var list = [121, 1, 312, 63, 4, 3, 4, 10, 5, 122];
var sortedList = [1, 2, 4, 7, 12, 75];

// Test Is List Sorted Ascending
isSorted(List<dynamic> list) {
  for (var i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) return false;
  }
  return true;
}

// Return Sorted Value using permutation.
bogoSort(List<dynamic> data) {
  while (!isSorted(data)) {
    data.shuffle();
  }
  return data;
}

void main(List<String> args) {
  print(bogoSort(list));
}
