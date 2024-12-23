import 'package:flutter/material.dart';

class BanglaSwarbornoPage extends StatelessWidget {
  // List of all Bengali consonants and vowels with corresponding colors
  final List<Map<String, dynamic>> letters = [
    // Vowels (স্বরবর্ণ)
    {"letter": "অ", "color": Colors.pink},
    {"letter": "আ", "color": Colors.red[400]},
    {"letter": "ই", "color": Colors.blue[300]},
    {"letter": "ঈ", "color": Colors.purple[200]},
    {"letter": "উ", "color": Colors.green[500]},
    {"letter": "ঊ", "color": Colors.cyan[400]},
    {"letter": "ঋ", "color": Colors.orange[400]},
    {"letter": "এ", "color": Colors.yellow[600]},
    {"letter": "ঐ", "color": Colors.indigo[400]},
    {"letter": "ও", "color": Colors.deepOrange[500]},
    {"letter": "ঔ", "color": Colors.teal[700]},
  ];

  BanglaSwarbornoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা বর্ণমালা'), // Updated title
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {
              // Play sound logic (to be implemented later)
            },
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // Share logic (to be implemented later)
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: letters.length,
          itemBuilder: (context, index) {
            return Card(
              color: letters[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  letters[index]["letter"],
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
