import 'package:flutter/material.dart';


class QR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR code'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/frame2.png', // Replace with your QR code image
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
