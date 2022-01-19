import 'dart:io';

void main() {
  userName();
}

printStar(int stars) {
  for (var i = 0; i < stars; i++) {
    var star = "";
    for (var j = 0; j < i; j++) {
      star += "*";
    }
    print(star);
  }
}

num calculateAverage(List<num> list) {
  num average = 0;
  for (num item in list) {
    average += item;
  }
  average /= list.length;
  return average;
}

void userName() {
  String? username;
  bool notValid = false;

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync();

    if ((username?.length ?? 0) < 6) {
      notValid = true;
      print('Username Anda tidak valid');
    } else {
      notValid = false;
    }
  } while (notValid);
}
