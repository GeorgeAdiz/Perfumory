import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Perfumory'),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the column content
        crossAxisAlignment: CrossAxisAlignment.center, // Center the text horizontally
        children: [
          Center(
            child: Text('Text 1', style: TextStyle(
                color: Colors.blueGrey[700],
                fontWeight: FontWeight.bold,
                fontSize: 50
            )),
          ),
          Center(
            child: Text('Text 2', style: TextStyle(
                color: Colors.cyanAccent[700],
                fontWeight: FontWeight.w800,
                fontSize: 60
            )),
          ),
          Center(
            child: Text('Text 3', style: TextStyle(
                color: Colors.teal[700],
                fontWeight: FontWeight.w900,
                fontSize: 70
            )),
          ),
        ],
      ),
    ),
  ));
}
