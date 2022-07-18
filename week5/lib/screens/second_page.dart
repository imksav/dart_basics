import 'package:flutter/material.dart';
import 'package:week5/screens/third_page.dart';

class SecondPage extends StatefulWidget {
  String name, email, address;
  SecondPage({required this.name, required this.email, required this.address});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  int? _sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            Text('Name: ${widget.name}'),
            Text('Email: ${widget.email}'),
            Text('Address: ${widget.address}'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number 1',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number 2',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(_num1.text);
                  int num2 = int.parse(_num2.text);
                  int sum = num1 + num2;
                  print(sum);
                  setState(() {
                    _sum = sum;
                  });
                },
                child: Text("Add")),
            SizedBox(height: 20.0),
            Text("Sum of ${_num1.text} and ${_num2.text} is $_sum",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
                child: Text("Go to Third Screen"))
          ],
        ),
      ),
    );
  }
}
