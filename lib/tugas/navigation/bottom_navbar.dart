import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final List<Widget> list = const [
    Text('Home'),
    Text('Cart'),
    Text('Favorite'),
    Text('User'),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icons/favorite_.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      setState(() {
        _selectedIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FIC - Bottom Navbar'),
        ),
        body: Center(
          child: list[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedItemColor: Colors.black87,
          elevation: 32,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            height: 1.5,
            fontSize: 12,
          ),
          items: menuItems.map((i) {
            return BottomNavigationBarItem(
              icon: SvgPicture.asset(
                i['icon'],
                color: Colors.white,
              ),
              activeIcon: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  i['icon'],
                  color: Colors.white,
                ),
              ),
            );
          }).toList(),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ));
  }
}
