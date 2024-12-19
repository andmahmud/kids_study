import 'package:flutter/material.dart';

class EnglishLettersPage extends StatelessWidget {
  // List of English letters (A-Z) and their corresponding colors
  final List<Map<String, dynamic>> englishLetters = [
    {"letter": "A", "color": Colors.red},
    {"letter": "B", "color": Colors.blue},
    {"letter": "C", "color": Colors.green},
    {"letter": "D", "color": Colors.orange},
    {"letter": "E", "color": Colors.purple},
    {"letter": "F", "color": Colors.cyan},
    {"letter": "G", "color": Colors.indigo},
    {"letter": "H", "color": Colors.amber},
    {"letter": "I", "color": Colors.teal},
    {"letter": "J", "color": Colors.deepOrange},
    {"letter": "K", "color": Colors.pink},
    {"letter": "L", "color": Colors.lime},
    {"letter": "M", "color": Colors.brown},
    {"letter": "N", "color": Colors.blueGrey},
    {"letter": "O", "color": Colors.greenAccent},
    {"letter": "P", "color": Colors.purpleAccent},
    {"letter": "Q", "color": Colors.lightGreen},
    {"letter": "R", "color": Colors.redAccent},
    {"letter": "S", "color": Colors.yellow},
    {"letter": "T", "color": Colors.deepPurple},
    {"letter": "U", "color": Colors.lightBlue},
    {"letter": "V", "color": Colors.purple},
    {"letter": "W", "color": Colors.blueAccent},
    {"letter": "X", "color": Colors.orangeAccent},
    {"letter": "Y", "color": Colors.purple[200]},
    {"letter": "Z", "color": Colors.green[800]},
  ];

  EnglishLettersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Letters with Colors'),
        backgroundColor: Colors.blue,
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
            crossAxisCount: 4, // 4 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: englishLetters.length,
          itemBuilder: (context, index) {
            return Card(
              color: englishLetters[index]["color"], // Unique color for each letter
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  englishLetters[index]["letter"],
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
