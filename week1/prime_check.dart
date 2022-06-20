import 'dart:io';

void checkPrime(number) {
  if (number == 1) {
    print("${number} is not a prime number.");
  } else if (number == 2) {
    print("${number} is a prime number.");
  } else {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        print("${number} is not a prime number.");
        return;
      }
    }
    print("${number} is a prime number.");
  }
}

void main() {
  print("Enter a number to check whether it is prime or not:");
  int number = int.parse(stdin.readLineSync()!);
  checkPrime(number);
}
