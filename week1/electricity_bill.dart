import 'dart:io';

void calculateBill(unit) {
  double bill = 0.0;
  if (unit < 100) {
    bill = 0.0 * 100;
  } else if (unit < 200) {
    bill = 0.0 * 100 + 5 * (100);
  } else {
    // first difference + second difference with respect to first difference + last difference
    bill = 0.0 * 100 + 5 * (100) + 10 * (unit - 200);
  }
  print("Your bill is Rs.${bill}");
}

void main() {
  print("Enter a number of units consumed:");
  double unit = double.parse(stdin.readLineSync()!);
  calculateBill(unit);
}
