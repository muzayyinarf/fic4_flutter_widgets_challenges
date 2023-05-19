// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'drawer_widget.dart';
import 'bottom_navbar.dart';
import 'navigation_push.dart';
import 'navigator_pop.dart';
import 'sliver_widget.dart';
import 'tabbar_widget.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Layout"),
        actions: const [],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          MenuItem(
            title: "Bottom Navbar Widget",
            to: BottomNavigationWidget(),
          ),
          MenuItem(
            title: "Drawer Widget",
            to: DrawerWidget(),
          ),
          MenuItem(
            title: "Navigation Push Widget",
            to: NavigationPush(),
          ),
          MenuItem(
            title: "Navigation Pop Widget",
            to: NavigationPop(),
          ),
          MenuItem(
            title: "Sliver Widget",
            to: SliverWidget(),
          ),
          MenuItem(
            title: "Tabbar Widget",
            to: TabbarWidget(),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Widget to;

  const MenuItem({
    Key? key,
    required this.title,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => to,
              ));
        },
      ),
    );
  }
}
