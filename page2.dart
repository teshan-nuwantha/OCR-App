import 'package:flutter/material.dart';
import 'package:my_app/pages/page1.dart';
import 'package:my_app/pages/page3.dart';





class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Document'),
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
              // Implement back button functionality
              // You can navigate to the previous screen here
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Implement delete button functionality
                // You can handle document deletion here
              },
            ),
          ],
        ),
       body: DocumentInterface(),
        
      ),
    );
  }
}

class DocumentInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display the scanned document image here
        // You can use an Image widget to show the scanned image
        //Image.asset('space1.png'),

        Center(
                  child: Image.asset(
                    "assets/frame1.png",
                    height: 300,
                    scale: 2,),
                ),

        // Extracted text fields (Given Name, Surname, Sex, Date of Birth)
        // You can use Text widgets to display the extracted information
        // Example:
        Text('Given Name: John Doe'),
        Text('Surname: Doe'),
        Text('Sex: Male'),
        Text('Date of Birth: 01/01/1990'),
        Text('ID Number:9025600106v'),

        // Blue circular check mark icons next to each field
        // You can use Icons.check_circle_outline or a custom icon
        Row(
          children: [
            Icon(Icons.check_circle_outline, color: Colors.blue),
            Text('Given Name verified'),
          ],
        ),
        // Repeat the above pattern for other fields

        // Close and Save buttons at the bottom
        // You can use ElevatedButton widgets
        Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ElevatedButton(
      onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>page3())); // Close the screen

        // Implement save functionality
        // Save the extracted data
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Set background color to red
      ),
      child: Text('SAVE'),
    ),
    ElevatedButton(
      onPressed: () {
        // Implement close functionality
       Navigator.push(context, MaterialPageRoute(builder: (context) =>Home())); // Close the screen
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Set background color to red
      ),
      child: Text('CLOSE')
      
    ),
  ],
),

      ],
    );
  }
}