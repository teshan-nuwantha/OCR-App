
import 'package:flutter/material.dart';
import 'package:my_app/pages/page1.dart';
import 'package:my_app/pages/page2.dart';
import 'package:my_app/pages/page3.dart';
import 'package:my_app/pages/page4.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Widget _currentWidget = Container();
  var _currentIndex = 0;
  @override
   void initState() {
    super.initState();
    _loadScreen();
  }

  void _loadScreen() {
    switch(_currentIndex) {
      case 0: return setState(() => _currentWidget = Home());
      case 1: return setState(() => _currentWidget = QR());
      case 2: return setState(() => _currentWidget = Page2());
      case 3: return setState(() => _currentWidget = Page3());
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: _currentWidget,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'QR',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
          setState(() => _currentIndex = index);
          _loadScreen();
        },
        ),
      );
  }
}


