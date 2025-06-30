import 'package:flutter/material.dart';
import 'Perfume.dart';

class ItemCard extends StatelessWidget {
  final Perfume perfume;

  const ItemCard({super.key, required this.perfume});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(perfume.brand),
          Text(perfume.notes),
          Text(perfume.price.toString()),
        ],
      ),
    );
  }
}
