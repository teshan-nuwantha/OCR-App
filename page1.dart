import 'package:flutter/material.dart';
import 'package:my_app/pages/page2.dart';
import 'package:my_app/pages/page5.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red, // Set the app bar color to red
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the first route when tapped
            Navigator.pop(context);
            },
          ),
          title: Text('Scan Document'),
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                // Handle camera icon press
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You can add something',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OptionButton(icon: Icons.description, label: 'Document'),
                  SizedBox(width: 20),
                  OptionButton(icon: Icons.photo_library, label: 'Gallery', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Page5()));
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OptionButton(icon: Icons.camera_alt, label: 'Camera', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                  }),
                  SizedBox(width: 20),
                  // Add other buttons here if needed
                ],
              ),
            ],
          ),
        ),);
  }
}


class OptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  OptionButton({required this.icon, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}


