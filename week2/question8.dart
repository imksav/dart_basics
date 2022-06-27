import 'dart:io';

void main() {
  List<String> myList = List<String>.filled(5, '', growable: true);
  print("Enter your friend's name:: ");
  for (int i = 0; i < myList.length; i++) {
    String name = stdin.readLineSync()!;
    myList[i] = name;
    if (i == 4) {
      break;
    }
  }
  myList.add("Keshav");
  print("Printing the list:: ");
  for (int i = 0; i < myList.length; i++) {
    print("Item at ${i} position is ${myList[i]}");
  }

  print("Element at first is ${myList.first}");
  print("Element at last is ${myList.last}");
  print("Elements between second and fourth are ${myList.getRange(2, 4)}");
}
