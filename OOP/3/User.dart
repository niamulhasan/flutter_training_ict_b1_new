import 'dart:io';

abstract class User {
  String? name;
  String? email;
  String? password;

  User(this.name, this.email, this.password);

  bool login() {
    print("Input email: ");
    String? inpEmail = stdin.readLineSync();
    print("Input password: ");
    String? inpPass = stdin.readLineSync();
    if (inpPass == password && inpEmail == email) {
      return true;
    }
    return false;
  }
}
