void main(List<String> args) {
  var list = [20, 10, 32, 156, 12, 3];
  print(list.indexOf(156));
  // print(linearSearch(list, 156));
}

int linearSearch(items, targetSearch) {
  for (var i = 0; i < items.length; i++) {
    if (items[i] == targetSearch) {
      return i;
    }
  }
  // Return -1 if target not found.
  return -1;
}

bool isExists(items, targetSearch) {
  for (var i = 0; i < items.length; i++) {
    if (items[i] == targetSearch) {
      return true;
    }
  }
  return false;
}
