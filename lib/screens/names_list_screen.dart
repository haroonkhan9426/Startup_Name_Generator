import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class NamesListScreen extends StatelessWidget{
  
  final wordsList = List<WordPair>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator')
      ),
      body: _generateBody(context)
    );
  }

  Widget _generateBody(BuildContext context){
    wordsList.addAll(generateWordPairs().take(15));
    return ListView.separated(
      itemCount: wordsList.length,
      padding: EdgeInsets.all(10.0),
      itemBuilder: (context, index) => _generateListTile(wordsList[index]),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
  
  Widget _generateListTile(WordPair wordPair){
    return ListTile(
      title: Text(wordPair.asPascalCase,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.black
      )));
  }

}