import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key}); // Fixed: removed space

  void _showUnderConstruction(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Notice"),
        content: const Text("Logout is under construction."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'User Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person, size: 80),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('George Adiz'),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('georgegonzales664@gmail.com'),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Company:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('None'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Text(
                        'Contact Number:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text('None'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () => _showUnderConstruction(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
