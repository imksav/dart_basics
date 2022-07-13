import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Assets'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo_sikshya.png',
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Image.network(
              "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/279953291_3216643045237760_8965794991436337490_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=PiqVKGNalLoAX-37Bf1&_nc_ht=scontent.fktm8-1.fna&oh=00_AT9Snb8Skq1rLJMfEufGFi7c7iQjYARz5M-j-X8ISjDuFw&oe=62D31469",
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.25,
            )
          ],
        ),
      ),
    );
  }
}
