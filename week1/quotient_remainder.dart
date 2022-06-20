import 'dart:io';

void quotientRemainder(num1, num2) {
  int quotient = num1 ~/ num2;
  int remainder = num1 % num2;
  print("The quotient of $num1 and $num2 is $quotient");
  print("The remainder of $num1 and $num2 is $remainder");
}

void main() {
  print("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);
  quotientRemainder(num1, num2);
}
