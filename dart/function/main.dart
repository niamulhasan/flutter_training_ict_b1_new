//input : name, age, height, weight, country
//print
// Profile:
//       Name: Akkas
//       Age: 33
//       Height: 5.7
//       Weight: 77
//       Country: Bangladesh

// void myFun(String email, {String? name, int? age}) {
//   print(email);
//   print("$name is $age years old");
// }

// void main() {
//   myFun(
//     "user@email.com",
//     name: "Rahim",
//     age: 20
//   );
// }

void greet(String name, [String msg = "Happy Birthday"]) {
  print("$msg, $name");
}

void main() {
  greet("Akkas", "Good Morning");
}
