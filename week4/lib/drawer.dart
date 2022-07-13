import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week4/bottombar.dart';
import 'package:week4/image.dart';
import 'package:week4/listview.dart';
import 'package:week4/tabbar.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Sikshya Technology",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                accountEmail: Text("info@sikshyatech.com",
                    style: TextStyle(fontSize: 12, color: Colors.black)),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    "ST",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.menu),
              title: const Text(' Drawer '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DrawerPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.navigation),
              title: const Text(' Bottom Navigation Bar '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomBarPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.tab),
              title: const Text(' Tab Bar '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TabBarPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text(' Asset Image '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImagePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text(' List View '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListViewPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Close'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer"),
      ),
    );
  }
}
