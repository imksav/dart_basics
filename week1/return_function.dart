import 'dart:io';

void sum(num1, num2) {
  double sum = num1 + num2;
  print("The sum of two numbers $num1 and $num2 is $sum");
}

void product(num1, num2) {
  double product = num1 * num2;
  print("The product of two numbers $num1 and $num2 is $product");
}

void main() {
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);
  sum(num1, num2);
  product(num1, num2);
}
