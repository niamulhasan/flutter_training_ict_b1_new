import 'dart:io';

void main() {
  print("Enter the starting number: ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter the ending number: ");
  int b = int.parse(stdin.readLineSync()!);

  for (int i = a; i <= b; i++) {
    print(i);
  }
}
