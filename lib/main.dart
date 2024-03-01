import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,                   //This line removes the debug banner that appears in the top-right corner of the screen
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),   // universal color which will be applied everywhere shades of yellow
      );
  }
}
