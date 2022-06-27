class Student {
  String? name;
  int? roll_no;

  Student({this.name, this.roll_no});

  displayDetails() {
    print("My name is ${this.name} and roll number is ${this.roll_no}");
  }
}

void main() {
  Student s1 = Student();
  s1.name = "John";
  s1.roll_no = 2;
  s1.displayDetails();
}
