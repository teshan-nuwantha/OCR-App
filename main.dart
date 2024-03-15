import 'package:flutter/material.dart';
import 'package:my_app/pages/bottomnavbar.dart';
import 'package:my_app/pages/page1.dart';

//main

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      title:"spaceApp", 
      home: BottomBar()
    );
  }
}




