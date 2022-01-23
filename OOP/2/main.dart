import 'dart:developer';
import 'dart:io';

class User {
  String name = "Akkas Ali";
  String password = "1234";
  String email = "akkas@alimail.com";

  User(this.name, this.password, this.email);

  bool login() {
    print("Enter email: ");
    String? inputEmail = stdin.readLineSync();
    print("Enter Password: ");
    String? inputPassword = stdin.readLineSync();

    if (inputPassword == password) {
      return true;
    }

    return false;
  }
}

void main() {
  var us1 = User("Rahim", "rahim@rmail.com", "1234");
  print(us1.login());

  var us2 = User("Karim", "karim@kmail.com", "1234");
  print(us2.login());
}
