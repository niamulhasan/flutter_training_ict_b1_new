import 'dart:io';

void main() {
  print("Enter your age: ");
  String? age = stdin.readLineSync();
  int int_age = int.parse(age!);

  if (int_age < 0) {
    print("Age cannot be negative");
  } else {
    if (int_age < 13) {
      print("Kid");
    } else if (int_age < 18) {
      print("Teen");
    } else {
      print("Adult $age $int_age");
    }
  }
}
