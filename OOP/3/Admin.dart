import 'User.dart';

class Admin extends User {
  String? adminType;

  Admin(name, email, password, this.adminType) : super(name, email, password);

  void deleteUser(int uid) {
    print("Deleting user of id $uid");
  }

  void addUser() {
    print("User created");
  }
}
