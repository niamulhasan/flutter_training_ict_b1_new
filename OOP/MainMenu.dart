import 'dart:io';

class MainMenu {
  static String? show() {
    print(" 1. Sent Money \n 2. Mobile Recharge\n 3. Payment\n 4. Cashout\n");
    return stdin.readLineSync();
  }
}
