import 'package:flutter/material.dart';

class HomeTime extends StatefulWidget {
  const HomeTime({super.key});

  @override
  State<HomeTime> createState() => _HomeState();
}

class _HomeState extends State<HomeTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location')
            ),
          ],
        ),
      ),
    );
  }
}