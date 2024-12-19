import 'package:flutter/material.dart';

class ArabicLettersPage extends StatelessWidget {
  // List of all Bengali consonants, vowels, and Arabic letters with corresponding colors
  final List<Map<String, dynamic>> letters = [
    

    // Arabic Letters (حروف عربية)
    {"letter": "ا", "color": Colors.red[300]},
    {"letter": "ب", "color": Colors.blue[300]},
    {"letter": "ت", "color": Colors.green[400]},
    {"letter": "ث", "color": Colors.yellow[600]},
    {"letter": "ج", "color": Colors.orange[300]},
    {"letter": "ح", "color": Colors.purple[300]},
    {"letter": "خ", "color": Colors.cyan[300]},
    {"letter": "د", "color": Colors.brown[300]},
    {"letter": "ذ", "color": Colors.teal[400]},
    {"letter": "ر", "color": Colors.pink[300]},
    {"letter": "ز", "color": Colors.green[300]},
    {"letter": "س", "color": Colors.amber[300]},
    {"letter": "ش", "color": Colors.blue[400]},
    {"letter": "ص", "color": Colors.deepOrange[300]},
    {"letter": "ض", "color": Colors.indigo[300]},
    {"letter": "ط", "color": Colors.purple[400]},
    {"letter": "ظ", "color": Colors.green[500]},
    {"letter": "ع", "color": Colors.yellow[500]},
    {"letter": "غ", "color": Colors.red[500]},
    {"letter": "ف", "color": Colors.blue[500]},
    {"letter": "ق", "color": Colors.teal[500]},
    {"letter": "ك", "color": Colors.cyan[500]},
    {"letter": "ل", "color": Colors.brown[500]},
    {"letter": "م", "color": Colors.orange[500]},
    {"letter": "ن", "color": Colors.green[600]},
    {"letter": "ه", "color": Colors.pink[500]},
    {"letter": "و", "color": Colors.purple[500]},
    {"letter": "ي", "color": Colors.blue[600]},
  ];

  ArabicLettersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা এবং আরবি বর্ণমালা'), // Updated title
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
