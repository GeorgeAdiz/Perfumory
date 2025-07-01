import 'package:flutter/material.dart';
import 'Perfume.dart';
import 'ItemCard.dart'; // Make sure this path is correct

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Perfume> perfume = [
    Perfume(
      perfumeName: 'Acqua di Gio Profumo',
      brand: 'Armani',
      notes: 'secret',
    ),
    Perfume(
      perfumeName: 'Born In Roma Intense',
      brand: 'Valentino',
      notes: 'secret',
    ),
    Perfume(
      perfumeName: 'Le Male Elixir',
      brand: 'Jean Paul Gaultier',
      notes: 'secret',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfume List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.blueGrey[300],
        centerTitle: true,
        elevation: 4,
      ),
      body: Column(
        children: perfume.map((perfume) {
          return ItemCard(perfume: perfume);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newperfume');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
