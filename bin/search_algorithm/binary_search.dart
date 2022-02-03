void main(List<String> args) {
  var list = [10, 20, 30, 40, 60, 70, 71, 74, 200];
  // print(binarySearchRecrusive(list, 200, 0, list.length));
  print(binarySearch(list, 5));
}

// Return Index, -1 if not found
int binarySearchRecrusive(List<int> list, int target, int start, int end) {
  int middle = start + ((end - start) / 2).floor();
  if (list[middle] == target) {
    return middle;
  } else {
    if (list.length == 1) {
      return -1;
    }

    if (target <= list[middle]) {
      return binarySearchRecrusive(list, target, start, middle);
    } else {
      return binarySearchRecrusive(list, target, middle, end);
    }
  }
}

int binarySearch(List<int> list, target) {
  int middle = (list.length / 2).floor();
  int start = 0;
  int end = list.length - 1;

  while (true) {
    if (list[middle] == target) {
      return middle;
    } else {
      if (start == end) {
        return -1;
      }
      if (target <= list[middle]) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
      middle = start + ((end - start) / 2).floor();
    }
  }
}
