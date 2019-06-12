import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Greeter.dart';
import 'package:my_flutter_app/Greeting.dart';
import 'package:my_flutter_app/People.dart';
import 'package:my_flutter_app/RandomWords.dart';
import 'package:my_flutter_app/SecondScreen.dart';
import 'package:my_flutter_app/Theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme,

////      home: new MyHomePage(
////        title: 'Flutter Demo Home page'
////      )
      initialRoute: "/",
      routes: {
        '/': (context) => new MyHomePage(title: "Flutter Demo Home Page"),
        "/second": (context) => SecondScreen(
              title: "Dynamic Title",
            ),
        "/random": (context) => RandomWords(),
        "/swPeople": (context) => People(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("My Drawer!"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text("Navigate"),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(title: "Dynamic Title")));
                },
              ),
              ListTile(
                title: Text('Random'),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RandomWords()));
                },
              ),
              ListTile(
                title: Text('Star Wars'),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => People()));
                },
              )
            ],
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(1000)),
                child: Greeter()), // container
            Container(
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png'),
              width: 200,
              height: 200,
            ),
            Container(
                child: Image.asset('dustin.png'),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(34)),
            Container(
              child: Greeting(
                  greeting: wordPair.asPascalCase + " dynamic random",
                  color: Colors.blueGrey),
            ),
            Container(
                child: RaisedButton(
              child: Text("Navigate"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SecondScreen(title: "Dynamic Title")));
              },
            )),
            RaisedButton(
              child: Text("Go Random"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RandomWords()));
              },
            ),
            RaisedButton(
              child: Text("Awesome People"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => People()));
              },
            )
          ],
        )));
  }
}
