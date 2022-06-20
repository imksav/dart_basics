import 'dart:io';

void printPrime(lower, higher) {
  for (int i = lower; i <= higher; i++) {
    bool isPrime = true;
    if (i == 1) {
      isPrime = false;
    } else {
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        print(i);
      }
    }
  }
}

void main() {
  print("Enter range of number to print the prime numbers:");
  print("Lower Number: ");
  int lower = int.parse(stdin.readLineSync()!);
  print("Higher Number: ");
  int higher = int.parse(stdin.readLineSync()!);

  printPrime(lower, higher);
}
