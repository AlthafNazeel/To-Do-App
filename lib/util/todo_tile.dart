import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {          // Stateless widgets is a basic building block for creating UI, its immutable 
  final String taskName;                          // These are the attributes of this class
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  
  ToDoTile ({                                     // This is a constructor
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });                                             // Stateless widget has no interactivity only the static part of the UI
                                                  // If you need a widget that can change its appearance or respond to user input, you would use a StatefulWidget instead.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),        // This padding is applied out of the container so basically the top gap
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
              )
          ],
        ),
      
      
      child: Container(
        height: 75,
        padding: EdgeInsets.all(24),
        child: Row(                               // made it a row so that it could have have multiple children
          children: [
            // checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),  // OnChanged requires a Function(bool?)? type thats why it is intialized as this above

            // task name
            Text(
              taskName,
              style: TextStyle(
                fontSize: 17,
                fontWeight: taskCompleted ? FontWeight.normal : FontWeight.bold,                  // unbolds the text when done
                decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none ,    // checks if taskCompleted is true if true put a linethrough else none
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          // color: Colors.purpleAccent,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(50)),
          
          
      ),
      ),
    );
  }
}