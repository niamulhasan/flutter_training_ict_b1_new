import 'dart:io';

void main() {
  List theList = [];
  while (true) {
    print("----------- \n List $theList");
    print(
        "Options: \n 1. Insert Items. \n 2. Remove items \n 3. Replace items.\n 4. Exit. \nChoose an Option:");
    int option = int.parse(stdin.readLineSync()!);
    // print(option);
    if (option == 1) {
      print(
          "Options: \n 1. Add at End.\n 2. Add at index. \nChoose an option: ");
      int addOption = int.parse(stdin.readLineSync()!);
      if (addOption == 1) {
        //code for add at end
        print("Insert Element: ");
        int value = int.parse(stdin.readLineSync()!);
        theList.add(value);
      } else if (addOption == 2) {
        //code for add at index
        print("Insert the index number: ");
        int indexNumber = int.parse(stdin.readLineSync()!);
        print("Insert the value: ");
        int value = int.parse(stdin.readLineSync()!);
        theList.insert(indexNumber, value);
      }
    } else if (option == 2) {
      //remove item
    } else if (option == 3) {
      //replace item
    } else if (option == 4) {
      //exit
      break;
    } else {
      print("Invalid Input");
    }
  }
}
