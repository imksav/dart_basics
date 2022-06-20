void main() {
  List a = [1, 0, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print("The list of number is $a");
  smallestLargestNumber(a);
  greaterThan8(a);
  smallerThan5(a);
  sum(a);
  odd(a);
  even(a);
  print("Printing the prime number in the list:");
  for (int i = 0; i < a.length; i++) {
    xyz(a[i]);
  }
}

void smallestLargestNumber(a) {
  for (int i = 0; i < a.length; i++) {
    for (int j = i + 1; j < a.length; j++) {
      if (a[i] > a[j]) {
        int temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }
  print(
      "The smallest number in a list is ${a[0]} and largest number is ${a[a.length - 1]}");
  print("===============================");
}

void greaterThan8(a) {
  print("The greatest numbers greater than 8 are:");
  for (int i = 0; i < a.length; i++) {
    if (a[i] > 8) {
      print(a[i]);
    }
  }
  print("===============================");
}

void smallerThan5(a) {
  print("The smallest numbers smaller than 5 are:");
  for (int i = 0; i < a.length; i++) {
    if (a[i] < 5) {
      print(a[i]);
    }
  }
  print("===============================");
}

void sum(a) {
  int sum = 0;
  for (int i = 0; i < a.length; i++) {
    sum = a[i] + sum;
  }
  print("The sum of all numbers in the list is $sum");
  print("===============================");
}

void odd(a) {
  print("The odd numbers in list are:");
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 != 0) {
      print("${a[i]}");
    }
  }
  print("===============================");
}

void even(a) {
  print("The even numbers in list are:");
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      print("${a[i]}");
    }
  }
  print("===============================");
}

void xyz(number) {
  bool isPrime = true;
  if (number == 1 || number == 0) {
    isPrime = false;
  } else {
    for (int j = 2; j < number; j++) {
      if (number % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print(number);
    }
  }
}
