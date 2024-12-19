import 'package:flutter/material.dart';

class EnglishSeasonsPage extends StatelessWidget {
  // List of seasons in Bengali and English
  final List<Map<String, dynamic>> seasons = [
    {"seasonBengali": "বসন্ত", "seasonEnglish": "Spring", "color": Colors.green},
    {"seasonBengali": "গ্রীষ্ম", "seasonEnglish": "Summer", "color": Colors.orange},
    {"seasonBengali": "বৃষ্টিকাল", "seasonEnglish": "Monsoon", "color": Colors.blue},
    {"seasonBengali": "শরৎ", "seasonEnglish": "Autumn", "color": Colors.yellow},
    {"seasonBengali": "হেমন্ত", "seasonEnglish": "Pre-Winter", "color": Colors.brown},
    {"seasonBengali": "শীত", "seasonEnglish": "Winter", "color": Colors.cyan},
  ];

  EnglishSeasonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা ও ইংরেজি ঋতু'),
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
          itemCount: seasons.length,
          itemBuilder: (context, index) {
            return Card(
              color: seasons[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      seasons[index]["seasonBengali"],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      seasons[index]["seasonEnglish"],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
