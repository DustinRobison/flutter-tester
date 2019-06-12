import 'package:flutter/material.dart';

class Greeter extends StatefulWidget {
  @override
  GreeterState createState() => GreeterState();
}

class GreeterState extends State {
  String greeting = "Hello from State";

  void _toggleState() {
    debugPrint("Tapped GreeterState to _toggleState");
    var next = greeting == "Hello from GreeterState"
        ? "Hello World"
        : "Hello from GreeterState";
    setState(() {
      greeting = next;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key('GreeterState-Gesture'),
      onTap: this._toggleState,
      child: Text(
        this.greeting,
        key: Key('GreeterState-text'),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
