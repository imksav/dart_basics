import 'package:flutter/material.dart';
import 'package:week5/screens/first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week 5 Assignment'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to First Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
