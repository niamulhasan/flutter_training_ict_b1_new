import 'dart:io';

class SubMenus {
  static void send() {
    print("Enter Number");
    String? number = stdin.readLineSync();

    print("Enter Amount");
    String? amount = stdin.readLineSync();
    print("$amount Taka sent to $number.");
  }

  static void recharge() {
    print("Enter Number");
    String? number = stdin.readLineSync();

    print("Enter Amount");
    String? amount = stdin.readLineSync();
    print("$amount Taka recharged to $number.");
  }

  static void payment() {
    print("Enter Number:");
    String? number = stdin.readLineSync();

    print("Enter Amount:");
    String? amount = stdin.readLineSync();
    print("$amount Taka Payment was completed to $number.");
  }

  static void cashout() {
    print("Enter Amount");
    String? amount = stdin.readLineSync();
    print("$amount Taka has been cashed out. ");
  }
}
