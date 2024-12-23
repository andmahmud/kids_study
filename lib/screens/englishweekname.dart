import 'package:flutter/material.dart';

class Englishweekname extends StatelessWidget {
  // List of days of the week in Bengali and English
  final List<Map<String, dynamic>> weekDays = [
    {"day": "রবিবার", "english": "Sunday", "color": Colors.red},
    {"day": "সোমবার", "english": "Monday", "color": Colors.orange},
    {"day": "মঙ্গলবার", "english": "Tuesday", "color": Colors.teal},
    {"day": "বুধবার", "english": "Wednesday", "color": Colors.green},
    {"day": "বৃহস্পতিবার", "english": "Thursday", "color": Colors.blue},
    {"day": "শুক্রবার", "english": "Friday", "color": Colors.indigo},
    {"day": "শনিবার", "english": "Saturday", "color": Colors.purple},
  ];

  Englishweekname({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Days of the Week'),
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
          itemCount: weekDays.length,
          itemBuilder: (context, index) {
            return Card(
              color: weekDays[index]["color"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      weekDays[index]["day"],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      weekDays[index]["english"],
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
