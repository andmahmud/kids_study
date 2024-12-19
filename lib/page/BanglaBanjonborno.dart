import 'package:flutter/material.dart';

class BanglaBanjanborno extends StatelessWidget {
  // List of all Bengali consonants and corresponding colors
  final List<Map<String, dynamic>> letters = [
    {"letter": "ক", "color": Colors.red},
    {"letter": "খ", "color": Colors.blue},
    {"letter": "গ", "color": Colors.brown},
    {"letter": "ঘ", "color": Colors.purple},
    {"letter": "ঙ", "color": Colors.green},
    {"letter": "চ", "color": Colors.amber},
    {"letter": "ছ", "color": Colors.blueAccent},
    {"letter": "জ", "color": Colors.green[700]},
    {"letter": "ঝ", "color": Colors.deepPurple[900]},
    {"letter": "ঞ", "color": Colors.purple[800]},
    {"letter": "ট", "color": Colors.red},
    {"letter": "ঠ", "color": Colors.blue},
    {"letter": "ড", "color": Colors.brown},
    {"letter": "ঢ", "color": Colors.purple[800]},
    {"letter": "ণ", "color": Colors.green[700]},
    {"letter": "ত", "color": Colors.orange},
    {"letter": "থ", "color": Colors.blue[200]},
    {"letter": "দ", "color": Colors.green[400]},
    {"letter": "ধ", "color": Colors.pink},
    {"letter": "ন", "color": Colors.teal},
    {"letter": "প", "color": Colors.cyan},
    {"letter": "ফ", "color": Colors.deepOrange},
    {"letter": "ব", "color": Colors.yellow},
    {"letter": "ভ", "color": Colors.indigo},
    {"letter": "ম", "color": Colors.orange[600]},
    {"letter": "য", "color": Colors.green[300]},
    {"letter": "র", "color": Colors.blue[800]},
    {"letter": "ল", "color": Colors.purple},
    {"letter": "শ", "color": Colors.deepPurple[300]},
    {"letter": "ষ", "color": Colors.red[800]},
    {"letter": "স", "color": Colors.yellow[700]},
    {"letter": "হ", "color": Colors.pink[400]},
    {"letter": "ড়", "color": Colors.green[800]},
    {"letter": "ঢ়", "color": Colors.blue[600]},
    {"letter": "য়", "color": Colors.brown[600]},
    {"letter": "ং", "color": Colors.purple[200]},
    {"letter": "ঃ", "color": Colors.deepOrange[700]},
    {"letter": "ঁ", "color": Colors.teal[600]},
  ];

  BanglaBanjanborno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা ব্যঞ্জনবর্ণ'),
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
