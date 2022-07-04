import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 1;
  String buttonName = "Click";
  Color buttonColor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.cyanAccent,
        debugShowCheckedModeBanner: false,
        title: 'Week 3 Lab',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Week 3 Assignment"),
            backgroundColor: Colors.red,
            centerTitle: false,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.amberAccent,
                  child: Image.asset("assets/SikshyaTechnology.png"),
                ),
                const Text("Hello World"),
                FlatButton(
                    color: buttonColor,
                    onPressed: () {
                      print("Printing in console");
                      setState(() {
                        buttonName = "Clicked";
                        buttonColor = Colors.blue;
                      });
                    },
                    child: Text(buttonName)),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
            onTap: (int index) {
              setState(() {
                currentIndex = index;
                print(currentIndex);
              });
            },
          ),
        ));
  }
}
