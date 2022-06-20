import 'dart:io';

// for loop
void forLoop(times, text) {
  print("For loop:");
  for (int i = 0; i < times; i++) {
    print('Hello, ${text}');
  }
}

// while loop
void whileLoop(times, text) {
  print("While loop:");
  int i = 0;
  while (i < times) {
    print('Hello, ${text}');
    i++;
  }
}

// do while loop
void doWhileLoop(times, text) {
  print("Do while loop:");
  int i = 0;
  do {
    print('Hello, ${text}');
    i++;
  } while (i < times);
}

void main() {
  print("Enter how many times you want to print the message:");
  int times = int.parse(stdin.readLineSync()!);
  print("Enter the text you want to print:");
  String? text = stdin.readLineSync();
  // for loop
  forLoop(times, text);
  // while loop
  whileLoop(times, text);
  // do...while loop
  doWhileLoop(times, text);
}
