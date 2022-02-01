import '../variable.dart';

void main(List<String> args) {
  print(quickSort(list));
}

quickSort(List<dynamic> list) {
  if (list.length <= 1) {
    return list;
  }
  var lessThanPivot = [];
  var greaterThanPivot = [];
  var pivot = list[0];

  for (var i = 1; i < list.length; i++) {
    if (list[i] <= pivot) {
      lessThanPivot.add(list[i]);
    } else {
      greaterThanPivot.add(list[i]);
    }
  }
  return [...quickSort(lessThanPivot), pivot, ...quickSort(greaterThanPivot)];
}
