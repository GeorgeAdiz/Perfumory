import 'package:flutter/material.dart';
import 'Perfume.dart';

class ItemCard extends StatelessWidget {
  final Perfume perfume;

  const ItemCard({
    super.key,
    required this.perfume,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            // You can add an image or icon here if needed
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    perfume.brand,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'PerfumeName: ${perfume.perfumeName}',
                    style: const TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    ),
                  ),
                  Text(
                    'Notes: ${perfume.notes}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
