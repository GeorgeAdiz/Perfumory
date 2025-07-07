import 'package:flutter/material.dart';
import 'package:my_app/pages/ListItem.dart';
import 'pages/newperfume.dart';
import 'pages/home.dart';
import 'world_time/home_time.dart';
import 'world_time/loading.dart';
import 'world_time/choose_location.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => HomeTime(),
      '/newperfume': (context) => const Newperfume(),
      '/Listitems': (context) => Listitems(),
      '/Home': (context) => Home(),

        // world time routes
        
      '/choose_location': (context) => ChooseLocation(),
      '/loading': (context) => Loading()
    },
  ));
}
