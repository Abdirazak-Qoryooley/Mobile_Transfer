import 'package:flutter/material.dart';
import 'package:mobile_bank/constants/themes.dart';
import 'package:mobile_bank/pages/homepage.dart';
import 'package:mobile_bank/pages/profile_page.dart';
import '../pages/message_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavSate();
}

class _BottomNavSate extends State<BottomNav> {
  late int _currenIndex = 0;

  final List<Widget> _pages = [
    homepage2(),
    messages(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: _pages[_currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kSecondryColor,
        unselectedItemColor: KprimaryColor,
        currentIndex: _currenIndex,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'messages',
              activeIcon: Icon(Icons.message)),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'person',
            activeIcon: Icon(Icons.person),
          ),
        ],
        onTap: (mycurrentIndex) {
          setState(() {
            _currenIndex = mycurrentIndex;
          });
        },
      ),
    );
  }
}

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNav(),
    );
  }
}
