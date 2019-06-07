import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];
    final _biggerFont = const TextStyle(fontSize: 18.0);
    final wordPair = WordPair.random();

    Widget _buildRow(WordPair pair) {
      return ListTile(title: Text(pair.asPascalCase, style: _biggerFont));
    }

    Widget _buildSuggestions() {
      return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, i) {
            if (i.isOdd) return Divider(
              color: Colors.black,
            );

            final index = i ~/ 2;
            if (index >= _suggestions.length) {
              _suggestions.addAll(prefix0.generateWordPairs().take(10));
            }
            return _buildRow(_suggestions[index]);
          });
    }

    return Scaffold(
        appBar: AppBar(title: Text("Random Word Page!")),
        body: _buildSuggestions()

//      Column(children: [
//        Center(
//            child: Padding(
//          padding: EdgeInsetsDirectional.only(top: 20),
//          child: Text(
//            "First: " + wordPair.asPascalCase,
//            style: TextStyle(fontSize: 22),
//          ),
//        )),
//        Container(
//          child: _buildSuggestions(),
//        )
//      ]),
        );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
