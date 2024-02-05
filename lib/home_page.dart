import 'package:flutter/material.dart';
// import 'package:todotute/pages/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(                            // Scafffold is like the structure of the page all widgets will be put under this section
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(                           // it creates an top bar can specify more things like title or actions to be performed here etc
        title: Text ('R.A.V.E.N'),              // Title for top bar
        elevation: 10,                          // Gives a tiny gradient effect to the ened of the top bar (there by default can adjust stregnth here)
        
      ),
    );
  }
}