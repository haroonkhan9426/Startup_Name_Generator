import 'package:flutter/material.dart';

class NamesListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator')
      ),
      body: _generateBody()
    );
  }

  Widget _generateBody(){
    return Text('Body');
  }

}