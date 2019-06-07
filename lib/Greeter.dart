import 'package:flutter/material.dart';

class Greeter extends StatefulWidget {
  @override
  GreeterState createState() => GreeterState();
}

class GreeterState extends State {
  String greeting = "Hello from State";

  void _toggleState() {
    var next =
        greeting == "Hello from State" ? "Hello World" : "Hello from State";
    setState(() {
      greeting = next;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this._toggleState,
      child: Text(
        this.greeting,
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
