import 'dart:math';

void main() {
  List<int> mylist = List.filled(10, 0, growable: false);
  print("List before insertion:\n${mylist}");
  for (int i = 0; i < mylist.length; i++) {
    Random random = Random();
    mylist[i] = random.nextInt(100);
  }
  print("List after insertion:\n${mylist}");
  for (int i = 0; i < mylist.length; i++) {
    print("Items at ${i} position is ${mylist[i]}");
  }
}
