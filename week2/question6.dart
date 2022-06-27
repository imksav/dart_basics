class Person {
  void walk() {
    print("Person is walking");
  }

  void talk() {
    print("Person is talking");
  }
}

class Keshav implements Person {
  @override
  void walk() {
    print("Keshav is walking");
  }

  @override
  void talk() {
    print("Keshav is talking");
  }
}

void main() {
  // Person p1 = Person();
  Keshav k1 = Keshav();
  // p1.walk();
  // p1.talk();
  k1.walk();
  k1.talk();
}
