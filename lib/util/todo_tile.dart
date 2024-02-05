import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {          // Stateless widgets is a basic building block for creating UI, its immutable 
  const ToDoTile ({super.key});                    // Stateless widget has no interactivity only the static part of the UI
                                                  // If you need a widget that can change its appearance or respond to user input, you would use a StatefulWidget instead.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),        // This padding is applied out of the container so basically the top gap
      child: Container(
        padding: EdgeInsets.all(24),
        child: Text("Make Tutorial"),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}