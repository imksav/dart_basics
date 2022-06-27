abstract class AbstractClass {
  String? message;
  AbstractClass() {
    print("This is constructor of abstract class.");
  }

  a_method() {
    print("This is abstract method");
  }

  n_method() {
    print("This is a normal method of abstract class.");
  }
}

class SubClass extends AbstractClass {
  a_method() {
    print("This is abstract method.");
  }
}

void main() {
  SubClass c1 = SubClass();
  c1.a_method();
  c1.n_method();
}
