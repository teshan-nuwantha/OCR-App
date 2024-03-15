import 'package:flutter/material.dart';
import 'package:my_app/pages/page4.dart';
import 'package:my_app/pages/page5.dart';


class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard Files'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>QR())); // Close the screen

                  
                  // Handle QR button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Set the button color to red
                ),
                child: Text('QR'),
              ),
              SizedBox(height: 140),
              ElevatedButton(
                onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>Page5())); // Close the screen

                  // Handle TOKEN button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Set the button color to red
                ),
                child: Text('TOKEN'),
              ),
            ],
          ),
        ),
       
      );
  }
}


class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    ));
  }
}
