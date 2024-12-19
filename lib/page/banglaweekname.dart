import 'package:flutter/material.dart';

class BengaliWeekname extends StatelessWidget {
  // List of days of the week in Bengali
  final List<Map<String, dynamic>> banglaWeekDays = [
    {"day": "রবিবার", "color": Colors.red},
    {"day": "সোমবার", "color": Colors.orange},
    {"day": "মঙ্গলবার", "color": Colors.teal},
    {"day": "বুধবার", "color": Colors.green},
    {"day": "বৃহস্পতিবার", "color": Colors.blue},
    {"day": "শুক্রবার", "color": Colors.indigo},
    {"day": "শনিবার", "color": Colors.purple},
  ];

  BengaliWeekname({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা সপ্তাহের দিন'),
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
          itemCount: banglaWeekDays.length,
          itemBuilder: (context, index) {
            return Card(
              color: banglaWeekDays[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  banglaWeekDays[index]["day"],
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
