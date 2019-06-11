import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class People extends StatefulWidget {
  @override
  PeopleState createState() => PeopleState();
}

class PeopleState extends State {
  bool loading = false;
  List people = [];
  String error = null;
  var url = 'https://swapi.co/api/people';

  initState() {
    super.initState();
    this.fetchPeople();
  }

  Future fetchPeople() async {
    setState(() {
      this.loading = true;
    });
    try {
      final http.Response response = await http.get(url);
      final data = json.decode(response.body);
      setState(() {
        this.people = data['results'];
      });
    } catch (err) {
      setState(() {
        this.error = err.toString();
      });
    } finally {
      setState(() {
        this.loading = false;
      });
    }
  }

  List<TableRow> getPeopleListForTable() {
    var tableHeader = [
      TableRow(children: [
        Text('Name'),
        Text('Height'),
        Text('Mass'),
        Text('Gender')
      ])
    ];

    var tableData = this.people.map((person) => TableRow(children: [
          Text(person['name']),
          Text(person['height']),
          Text(person['mass']),
          Text(person['gender'])
        ]));

    return []..addAll(tableHeader)..addAll(tableData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Star Wars People'),
        ),
        body: this.loading
            ? Center(child: CircularProgressIndicator())
            : this.error != null
                ? Text('Error loading data, sorry!\n' + this.error)
                : Table(
                    children: getPeopleListForTable(),
                    border: TableBorder.all()));
  }
}

//this.people.map((person) =>
//TableRow(
//children: [
//Text(person['name']),
//
//]
//)
//)
