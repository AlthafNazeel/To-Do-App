import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Color.fromARGB(255, 107, 142, 201),
      content: Container(
        height: 140,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // get user input
          TextField(
            controller: controller,
            decoration: 
            InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          // Save and cancel button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
              MyButton(text: "Save", onPressed: onSave),

              const SizedBox(width: 8),

              //cancel button
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ]),
      ),
    );
  }
}
