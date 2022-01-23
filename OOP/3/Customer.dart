import 'User.dart';

class Customer extends User {
  String? city;

  Customer(String? name, String? email, String? password)
      : super(name, email, password);

  void buy(int pid) {
    print("Buying produuct of id $pid");
  }

  void sell(int pid) {
    print("Selling product of id $pid");
  }
}
