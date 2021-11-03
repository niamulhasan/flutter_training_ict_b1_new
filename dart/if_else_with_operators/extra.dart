import 'dart:io';

void main() {
  List a = [];
  while (true) {
    print("Enter a number or stop: ");
    String? data = stdin.readLineSync();

    if (data == "stop") {
      break;
    } else {
      try {
        int number = int.parse(data!);
        a.add(number);
      } catch (error) {
        print("Invalid Data");
        break;
      }
    }
  }
  print(a);
}
