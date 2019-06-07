import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final List<Map<String, String>> people = [
    {"name": "Ammon"},
    {"name": "Hill"},
    {"name": "DRob"},
    {"name": "Jesse P"},
    {"name": "Chris"}
  ];

  SecondScreen({
    @required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: Center(
            child: Column(
          children: <Widget>[
            RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(this.title)),
            Text(
              "I can make lists:",
            ),
            Container(
              height: 400,
              width: 400,
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: this.people.length,
                itemBuilder: (BuildContext context, index) {
                  return Text(this.people[index]['name'],
                      style: TextStyle(fontSize: 32));
                },
              ),
            )
          ],
        )));
  }
}
