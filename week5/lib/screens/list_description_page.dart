import 'package:flutter/material.dart';

class ListDescriptionPage extends StatefulWidget {
  final String fruitname;
  final String url;
  const ListDescriptionPage({
    Key? key,
    required this.fruitname,
    required this.url,
  }) : super(key: key);

  @override
  State<ListDescriptionPage> createState() => _ListDescriptionPageState();
}

class _ListDescriptionPageState extends State<ListDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.fruitname}'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(widget.url),
            ),
            Text(
              "Description of ${widget.fruitname}",
              style: TextStyle(color: Colors.purple, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
