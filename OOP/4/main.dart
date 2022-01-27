class User {
  String? name;
  String? email;

  void login() {
    print("Login here");
  }
}

class RegisteredUser extends User {
  String? password;
}

class AnnonUser extends User {
  @override
  void login() {
    print("Annon user cannot login");
    super.login();
  }
}

void main() {
  AnnonUser user2 = AnnonUser();
  user2.login();
}
