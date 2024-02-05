import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {          // Stateless widgets is a basic building block for creating UI, its immutable 
  final String taskName;                          // These are the attributes of this class
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  ToDoTile ({                                     // This is a constructor
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });                                             // Stateless widget has no interactivity only the static part of the UI
                                                  // If you need a widget that can change its appearance or respond to user input, you would use a StatefulWidget instead.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),        // This padding is applied out of the container so basically the top gap
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(                               // made it a row so that it could have have multiple children
          children: [
            // checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),  // OnChanged requires a Function(bool?)? type thats why it is intialized as this above

            // task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}