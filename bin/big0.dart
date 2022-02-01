void main() {
//   print(isPalindrom("Katak"));
  permutation("leguna");
}

bool isPalindrom(String text) {
  var reversed = text.split('').reversed.join();
  return reversed.toLowerCase() == text.toLowerCase();
}

allFib(int n) {
  for (int i = 0; i < n; i++) {
    print(i.toString() + ": " + fib(i).toString());
  }
}

fib(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  return fib(n - 1) + fib(n - 2);
}

permutation(String s) {
  perm(s, "");
}

perm(String str, String prefix) {
  if (str.isEmpty) {
    print(prefix);
  } else {
    for (var i = 0; i < str.length; i++) {
      String rem = str.substring(0, i) + str.substring(i + 1);
      perm(rem, prefix + str[i]);
    }
  }
}
