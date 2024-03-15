
import 'package:flutter/material.dart';
import 'package:my_app/pages/page1.dart';
import 'package:my_app/pages/page2.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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
      case 1: return setState(() => _currentWidget = Page2());
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Token Number'),
          backgroundColor: Colors.pink,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Handle settings button press
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            '2',
            style: TextStyle(
              fontSize: 250,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        
      );;
  }
}


