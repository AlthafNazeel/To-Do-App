import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/dialog_box.dart';
import 'package:flutter_application_1/util/todo_tile.dart';
// import 'package:todotute/pages/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // text controller
  final _controller = TextEditingController();

  // list of todo tasks
List toDoList = [
  ["Make tutorial", false],
  ["Exercise", false],
];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {              //This function is called when a checkbox in a ToDoTile is tapped. It cahnges the completion status of the corresponding task
    setState(() {                   
      toDoList[index] [1] = !toDoList[index] [1];             // changes the boolean to opposites true if it was false and vise versa.
    });
  }

  // save new task
  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(                            // Scafffold is like the structure of the page all widgets will be put under this section
      // backgroundColor: Colors.blueAccent[200],
      appBar: AppBar(                           // it creates an top bar can specify more things like title or actions to be performed here etc
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text (                           // Title for top bar
            'TO-DO-LIST',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),  

        elevation: 10,                          // Gives a small shadow effect to the end of the top bar (there by default can adjust stregnth here)
        backgroundColor: const Color.fromARGB(255, 107, 142, 201),
        toolbarHeight: 80,                      // Adjust the height of the app bar
        centerTitle: true,                      // Center the title
      ), 

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 107, 142, 201),
      ),

      body: ListView.builder(                      // creates a scrollable list of widgets 
        itemCount: toDoList.length,
        itemBuilder: (context, index) {             // like a loop index will increment
          return ToDoTile(
          taskName: toDoList[index] [0],            // access the first column in that index for name
          taskCompleted: toDoList[index] [1], 
          onChanged: (value) => checkBoxChanged(value, index),
          deleteFunction: (p0) => deleteTask(index),
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