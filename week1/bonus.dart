import 'dart:io';

bonus(salary, years) {
  if (years > 5) {
    double bonus = salary * 0.05;
    print("You received a bonus of Rs.${bonus}");
    print("Your salary is Rs.${salary + bonus}");
  } else {
    print("You  didn't receive any bonus");
    print("Your salary is Rs.${salary}");
  }
}

void main() {
  print("Enter your salary: ");
  double salary = double.parse(stdin.readLineSync()!);
  print("Enter your service years: ");
  int years = int.parse(stdin.readLineSync()!);
  bonus(salary, years);
}
