void main() {
  //i = 5
  // *
  // **
  // ***
  // ****
  // *****

  String line = "*";
  for (int i = 0; i < 3; i++) {
    print("loop 1 -upper body");
    for (int j = 0; j < i; j++) {
      print("loop 2");
    }
    print("loop 1 - down body");
  }
}
