import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Drawer'),
        actions: const [],
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: const UserAccountsDrawerHeader(
                  accountName: Text(
                    'Rozak',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    'rozak.dev@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
