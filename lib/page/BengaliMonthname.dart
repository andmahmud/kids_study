import 'package:flutter/material.dart';

class BengaliMonthsPage extends StatelessWidget {
  // List of Bengali months based on Bengali calendar
  final List<Map<String, dynamic>> banglaMonths = [
    {"month": "বৈশাখ", "color": Colors.green},
    {"month": "জ্যৈষ্ঠ", "color": Colors.orange},
    {"month": "আষাঢ়", "color": Colors.blue},
    {"month": "শ্রাবণ", "color": Colors.yellow},
    {"month": "ভাদ্রপদ", "color": Colors.pink},
    {"month": "আশ্বিন", "color": Colors.red},
    {"month": "কার্তিক", "color": Colors.cyan},
    {"month": "অগ্রহায়ণ", "color": Colors.purple},
    {"month": "পৌষ", "color": Colors.indigo},
    {"month": "মাঘ", "color": Colors.teal},
    {"month": "ফাল্গুন", "color": Colors.brown},
    {"month": "চৈত্র", "color": Colors.amber},
  ];

  BengaliMonthsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা ১২ মাস'),
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
          itemCount: banglaMonths.length,
          itemBuilder: (context, index) {
            return Card(
              color: banglaMonths[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  banglaMonths[index]["month"],
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
