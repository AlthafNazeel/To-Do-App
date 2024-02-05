import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/todo_tile.dart';
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
      backgroundColor: Colors.purple[200],
      appBar: AppBar(                           // it creates an top bar can specify more things like title or actions to be performed here etc
        title: Text ('R.A.V.E.N'),              // Title for top bar
        elevation: 10,                          // Gives a small shadow effect to the end of the top bar (there by default can adjust stregnth here)
        backgroundColor: Colors.purple,
      ),

      body: ListView(                      // creates a listvoew in the body with a todolist class as the only child included
        children: [
        ToDoTile(),                        // This method is to be created
        ],
      ),

    );
  }
}