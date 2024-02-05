import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/todo_tile.dart';
// import 'package:todotute/pages/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todo tasks
List toDoList = [
  ["Make tutorial", false],
  ["Exercise", false],
];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index] [1] = !toDoList[index] [1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(                            // Scafffold is like the structure of the page all widgets will be put under this section
      backgroundColor: Colors.purple[200],
      appBar: AppBar(                           // it creates an top bar can specify more things like title or actions to be performed here etc
        title: Text ('R.A.V.E.N'),              // Title for top bar
        elevation: 10,                          // Gives a small shadow effect to the end of the top bar (there by default can adjust stregnth here)
        backgroundColor: Colors.purple,
      ),

      body: ListView.builder(                      // creates a scrollable list of widgets 
        itemCount: toDoList.length,
        itemBuilder: (context, index) {             // like a loop index will increment
          return ToDoTile(
          taskName: toDoList[index] [0],            // access the first column in that index for name
          taskCompleted: toDoList[index] [1], 
          onChanged: (value) => checkBoxChanged(value, index),
          );
        },

        // children: [
        // ToDoTile(                          // Calling the constructor and passing details
        //   taskName: "Make Tutorial",
        //   taskCompleted: true,
        //   onChanged: (p0) {},
        // ),

        // ToDoTile(                          // Calling the constructor and passing details
        //   taskName: "Go to the Gym",
        //   taskCompleted: false,
        //   onChanged: (p0) {},
        // ),


        // ],
      ),

    );
  }
}