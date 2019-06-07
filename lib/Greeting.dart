import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  Greeting({@required this.greeting, this.color = Colors.green});

  final String greeting;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(this.greeting,
        style: TextStyle(color: Colors.red, fontSize: 22));
  }
}
