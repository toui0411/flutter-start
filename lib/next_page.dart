
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('次のページ'),
      ),
      body: Container(
        child: Text(
          'kboyですよ',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}