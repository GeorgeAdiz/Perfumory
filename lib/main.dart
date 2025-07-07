import 'package:flutter/material.dart';
import 'package:my_app/pages/ListItem.dart';
import 'pages/newperfume.dart';
import 'pages/home.dart';
import 'world_time/home_time.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => HomeTime(),
      '/newperfume': (context) => const Newperfume(),
      '/Listitems': (context) => Listitems(),
      '/Home': (context) => Home(),

      // world time routes
    

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
