import 'binary_search.dart';

exponentialSearch(arr, target) {
  if (target == arr[0]) {
    return 0;
  }

  var i = 1;
  var n = arr.length();
  while (i < n && arr[i] <= target) {
    i *= 2;
  }
  return binarySearch(arr, target);
}
