import 'package:flutter/material.dart';
import 'Perfume.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Perfume> perfume = [
    Perfume(
      brand: 'Armani',
       notes: 'secret',
        price: 10),
    Perfume(
      brand: 'Valentino',
     notes: 'secret',
      price: 15),
    Perfume(
      brand: 'JPG',
      notes: 'secret',
      price: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfume List',)),
      body: ListView.builder(
        itemCount: perfume.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(perfume[index].brand, ),
            subtitle: Text(perfume[index].notes),
            trailing: Text(perfume[index].price.toString()),
          );
        },
      ),
    );
  }
}
