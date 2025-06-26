import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PerfumeDashboard(),
    ),
  );
}

class PerfumeDashboard extends StatelessWidget {
  const PerfumeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 113, 114),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 3, 78),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'FRAGRANCE COLLECTION DASHBOARD',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Fragrance Notes Overview
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "TOP FRAGRANCE NOTES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _fragranceNote("Citrus", Icons.spa, Colors.orange),
                        const SizedBox(width: 8),
                        _fragranceNote("Woody", Icons.spa, Colors.brown),
                        const SizedBox(width: 8),
                        _fragranceNote("Floral", Icons.spa, Colors.pink),
                        const SizedBox(width: 8),
                        _fragranceNote("Spicy", Icons.spa, Colors.red),
                        const SizedBox(width: 8),
                        _fragranceNote("Fresh", Icons.spa, Colors.lightBlue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            
            // Best Fragrances Section
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "BEST FRAGRANCES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            
            Expanded(
              child: ListView(
                children: const [
                  _bestFragranceItem(
                    "Sauvage", 
                    "Dior", 
                    "Woody • Citrus • Spicy",
                    "assets/dior.png"
                  ),
                  _bestFragranceItem(
                    "Bleu de Chanel", 
                    "Chanel", 
                    "Citrus • Woody • Amber",
                    "assets/chanel.png"
                  ),
                  _bestFragranceItem(
                    "Acqua di Gio", 
                    "Armani", 
                    "Aquatic • Citrus • Floral",
                    "assets/armani.png"
                  ),
                  _bestFragranceItem(
                    "Valentino Born in Roma Intense", 
                    "Valentino", 
                    "Lavender • Vanilla • Woody",
                    "assets/tomford.png"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 3, 3, 78),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _fragranceNote(String note, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 2),
          ),
          child: Icon(icon, color: color, size: 30),
        ),
        const SizedBox(height: 5),
        Text(
          note,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _bestFragranceItem extends StatelessWidget {
  final String name;
  final String brand;
  final String notes;
  final String imagePath;
  
  const _bestFragranceItem(
    this.name, 
    this.brand, 
    this.notes, 
    this.imagePath
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[800],
            ),
            child: const Icon(Icons.spa, color: Colors.white, size: 30),
            // In a real app: Image.asset(imagePath)
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  brand,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  notes,
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.white),
          ),
        ],
      ),
    );
  }
}