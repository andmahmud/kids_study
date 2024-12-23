import 'package:flutter/material.dart';

class EnglishMonthsPage extends StatelessWidget {
  // List of English months
  final List<Map<String, dynamic>> englishMonths = [
    {"month": "January", "color": Colors.red},
    {"month": "February", "color": Colors.green},
    {"month": "March", "color": Colors.blue},
    {"month": "April", "color": Colors.orange},
    {"month": "May", "color": Colors.purple},
    {"month": "June", "color": Colors.teal},
    {"month": "July", "color": Colors.pink},
    {"month": "August", "color": Colors.yellow},
    {"month": "September", "color": Colors.brown},
    {"month": "October", "color": Colors.cyan},
    {"month": "November", "color": Colors.indigo},
    {"month": "December", "color": Colors.amber},
  ];

  EnglishMonthsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Months'),
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
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: englishMonths.length,
          itemBuilder: (context, index) {
            return Card(
              color: englishMonths[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  englishMonths[index]["month"],
                  style: const TextStyle(
                    fontSize: 24,
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
