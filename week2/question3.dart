abstract class Parent {
  void message() {
    print("This is parent class.");
  }
}

class First extends Parent {
  void message() {
    print("This is first subclass.");
  }
}

class Second extends Parent {
  void message() {
    print("This is second subclass.");
  }
}

void main() {
  First f1 = First();
  f1.message();
  Second s1 = Second();
  s1.message();
}
