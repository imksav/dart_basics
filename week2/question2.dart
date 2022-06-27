class Student {
  displayProfile() {
    print("I am a student.");
  }
}

class Teacher {
  displayProfile() {
    print("I am a teacher.");
  }
}

class Person extends Student, Teacher {}

void main() {
  Person p1 = Person();
  p1.displayProfile();
}
