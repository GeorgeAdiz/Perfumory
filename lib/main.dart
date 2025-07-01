import 'package:flutter/material.dart';
import 'package:my_app/pages/ListItem.dart';
import 'pages/newperfume.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Listitems(),
      '/newperfume': (context) => const Newperfume(),
      '/Listitems': (context) => Listitems(),
    },
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