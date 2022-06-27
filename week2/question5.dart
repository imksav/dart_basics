class NamedConstructor {
  String? name;
  int? id;

  NamedConstructor() {
    print("This is default constructor.");
  }
  NamedConstructor.name({this.name});

  NamedConstructor.id({this.id});
}

void main() {
  // NamedConstructor n0 = NamedConstructor();
  NamedConstructor n1 = NamedConstructor.name();
  n1.name = "Keshav Bhandari";
  print(n1.name);
  NamedConstructor n2 = NamedConstructor.id();
  n2.id = 25;
  // print(n1.id);
  print(n2.id);
}
