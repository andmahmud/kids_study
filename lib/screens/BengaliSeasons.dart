import 'package:flutter/material.dart';

class BengaliSeasonsPage extends StatelessWidget {
  // List of seasons in Bengali
  final List<Map<String, dynamic>> banglaSeasons = [
    {"season": "বসন্ত", "color": Colors.green},
    {"season": "গ্রীষ্ম", "color": Colors.orange},
    {"season": "বৃষ্টিকাল", "color": Colors.blue},
    {"season": "শরৎ", "color": Colors.teal},
    {"season": "হেমন্ত", "color": Colors.brown},
    {"season": "শীত", "color": Colors.cyan},
  ];

  BengaliSeasonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা ঋতু'),
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
          itemCount: banglaSeasons.length,
          itemBuilder: (context, index) {
            return Card(
              color: banglaSeasons[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  banglaSeasons[index]["season"],
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
