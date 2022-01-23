class User {
  User() {
    print("I am a constructor");
  }

  void hello() {
    print("Hello");
  }

  void hi() {
    print("Hi");
  }
}

void main() {
  var a = User();
  a.hello();
  a.hi();
}
