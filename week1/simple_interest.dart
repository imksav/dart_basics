import 'dart:io';

void main() {
  print("Enter your principal: ");
  double principal = double.parse(stdin.readLineSync()!);
  print("Enter your rate of interest: ");
  double rate = double.parse(stdin.readLineSync()!);
  print("Enter the number of years: ");
  int years = int.parse(stdin.readLineSync()!);
  double simpleInterest = principal * rate * years / 100;
  print("The sum of simple interest is ${simpleInterest}");
}
