import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  final TextStyle mainText = new TextStyle(fontSize: 22);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            "Click counter",
            style: mainText
          ),
          Text("$_counter")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            print("Pressed!");
            _counter++;
          },
          child: Icon(Icons.add)),
    );
  }
}
