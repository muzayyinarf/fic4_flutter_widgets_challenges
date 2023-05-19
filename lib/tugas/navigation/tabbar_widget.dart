import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Tabbar'),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            icon: Icon(Icons.directions_boat),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
          ),
          Tab(
            icon: Icon(Icons.directions_ferry),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Text('Tab 1'),
          ),
        ],
      ),
    );
  }
}
