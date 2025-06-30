import 'package:flutter/material.dart';
import 'pages/ListItem.dart';

void main() {
  runApp(MaterialApp(
    home: Listitems(), 
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false);
  }
}