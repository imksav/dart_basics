import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Tab 1',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Tab 2',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Tab 3',
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        Center(child: Text('Tab 1')),
        Center(child: Text('Tab 2')),
        Center(child: Text('Tab 3'))
      ]),
    );
  }
}
