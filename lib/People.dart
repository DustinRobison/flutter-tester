import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_app/server/StarWarsPeople.dart';
import 'package:my_flutter_app/server/StarWarsPerson.dart';

class People extends StatefulWidget {
  @override
  PeopleState createState() => PeopleState();
}

class PeopleState extends State {
  bool loading = false;
  List<StarWarsPerson> people = [];
  String dropdownValue = 'One';
  String error = null;
  var url = 'https://swapi.co/api/people';

  initState() {
    super.initState();
    this.fetchPeople();
  }

  String getDropDownValueString() {
    switch (this.dropdownValue) {
      case "Four":
        return "4";
      case "Three":
        return "3";
      case "Two":
        return "2";
      default:
        return "1";
    }
  }

  Future fetchPeople() async {
    setState(() {
      this.loading = true;
    });
    try {
      final fullUrl = url + '/?page=' + getDropDownValueString();
      debugPrint(fullUrl);
      final http.Response response = await http.get(fullUrl);
      final Map data = json.decode(response.body);
      final StarWarsPeople starWarsPeople = StarWarsPeople.fromJson(data);
      debugPrint('Star wars people next: ' + starWarsPeople.next);
      setState(() {
        this.people = starWarsPeople.results;
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

  Text getTableHeaderItem(String value) {
    return Text(value, style: Theme.of(context).textTheme.subhead);
  }

  List<TableRow> getPeopleListForTable() {
    var tableHeader = [
      TableRow(
          decoration: new BoxDecoration(color: Colors.blueAccent),
          children: [
            getTableHeaderItem('Name'),
            getTableHeaderItem('Height'),
            getTableHeaderItem('Mass'),
            getTableHeaderItem('Gender'),
          ])
    ];

    var tableData = this.people.map((person) => TableRow(children: [
          Text(person.name ?? ""),
          Text(person.height ?? ""),
          Text(person.mass ?? ""),
          Text(person.gender ?? ""),
        ]));

    return []..addAll(tableHeader)..addAll(tableData);
  }

  Widget getTable() {
    return this.loading
        ? Center(child: CircularProgressIndicator())
        : this.error != null
            ? Text('Error loading data, sorry!\n' + this.error)
            : Table(
                children: getPeopleListForTable(),
                border: TableBorder.all(color: Colors.grey[100]),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Star Wars People'),
        ),
        body: Column(
          children: <Widget>[
            getTable(),
            Center(
              child: DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                  fetchPeople();
                },
                items: <String>['One', 'Two', 'Three', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}
