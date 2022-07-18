import 'package:flutter/material.dart';

import 'list_description_page.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  static List<String> fruitname = ["Banana", "Mango", "Apple", "Strawberry"];
  static List<String> url = [
    'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
  ];
  // final List<FruitModel> fruits = List.generate(fruitname.length,
  //     (index) => FruitModel("${fruitname[index]}", "${url[index]}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
          itemCount: fruitname.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(fruitname[index]),
                leading: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Image.network(url[index]),
                ),
                onTap: () {
                  print("${fruitname[index]}\n ${url[index]}");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ListDescriptionPage(
                            fruitname: fruitname[index],
                            url: url[index],
                          )));
                },
              ),
            );
          }),
    );
  }
}
