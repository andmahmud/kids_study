import 'package:flutter/material.dart';

class EnglishNumbersPage extends StatelessWidget {
  // List of numbers from 1 to 100 with their spellings
  final List<Map<String, dynamic>> englishNumbers = [
    {"number": 1, "spelling": "One"},
    {"number": 2, "spelling": "Two"},
    {"number": 3, "spelling": "Three"},
    {"number": 4, "spelling": "Four"},
    {"number": 5, "spelling": "Five"},
    {"number": 6, "spelling": "Six"},
    {"number": 7, "spelling": "Seven"},
    {"number": 8, "spelling": "Eight"},
    {"number": 9, "spelling": "Nine"},
    {"number": 10, "spelling": "Ten"},
    {"number": 11, "spelling": "Eleven"},
    {"number": 12, "spelling": "Twelve"},
    {"number": 13, "spelling": "Thirteen"},
    {"number": 14, "spelling": "Fourteen"},
    {"number": 15, "spelling": "Fifteen"},
    {"number": 16, "spelling": "Sixteen"},
    {"number": 17, "spelling": "Seventeen"},
    {"number": 18, "spelling": "Eighteen"},
    {"number": 19, "spelling": "Nineteen"},
    {"number": 20, "spelling": "Twenty"},
    {"number": 21, "spelling": "Twenty-One"},
    {"number": 22, "spelling": "Twenty-Two"},
    {"number": 23, "spelling": "Twenty-Three"},
    {"number": 24, "spelling": "Twenty-Four"},
    {"number": 25, "spelling": "Twenty-Five"},
    {"number": 26, "spelling": "Twenty-Six"},
    {"number": 27, "spelling": "Twenty-Seven"},
    {"number": 28, "spelling": "Twenty-Eight"},
    {"number": 29, "spelling": "Twenty-Nine"},
    {"number": 30, "spelling": "Thirty"},
    {"number": 31, "spelling": "Thirty-One"},
    {"number": 32, "spelling": "Thirty-Two"},
    {"number": 33, "spelling": "Thirty-Three"},
    {"number": 34, "spelling": "Thirty-Four"},
    {"number": 35, "spelling": "Thirty-Five"},
    {"number": 36, "spelling": "Thirty-Six"},
    {"number": 37, "spelling": "Thirty-Seven"},
    {"number": 38, "spelling": "Thirty-Eight"},
    {"number": 39, "spelling": "Thirty-Nine"},
    {"number": 40, "spelling": "Forty"},
    {"number": 41, "spelling": "Forty-One"},
    {"number": 42, "spelling": "Forty-Two"},
    {"number": 43, "spelling": "Forty-Three"},
    {"number": 44, "spelling": "Forty-Four"},
    {"number": 45, "spelling": "Forty-Five"},
    {"number": 46, "spelling": "Forty-Six"},
    {"number": 47, "spelling": "Forty-Seven"},
    {"number": 48, "spelling": "Forty-Eight"},
    {"number": 49, "spelling": "Forty-Nine"},
    {"number": 50, "spelling": "Fifty"},
    {"number": 51, "spelling": "Fifty-One"},
    {"number": 52, "spelling": "Fifty-Two"},
    {"number": 53, "spelling": "Fifty-Three"},
    {"number": 54, "spelling": "Fifty-Four"},
    {"number": 55, "spelling": "Fifty-Five"},
    {"number": 56, "spelling": "Fifty-Six"},
    {"number": 57, "spelling": "Fifty-Seven"},
    {"number": 58, "spelling": "Fifty-Eight"},
    {"number": 59, "spelling": "Fifty-Nine"},
    {"number": 60, "spelling": "Sixty"},
    {"number": 61, "spelling": "Sixty-One"},
    {"number": 62, "spelling": "Sixty-Two"},
    {"number": 63, "spelling": "Sixty-Three"},
    {"number": 64, "spelling": "Sixty-Four"},
    {"number": 65, "spelling": "Sixty-Five"},
    {"number": 66, "spelling": "Sixty-Six"},
    {"number": 67, "spelling": "Sixty-Seven"},
    {"number": 68, "spelling": "Sixty-Eight"},
    {"number": 69, "spelling": "Sixty-Nine"},
    {"number": 70, "spelling": "Seventy"},
    {"number": 71, "spelling": "Seventy-One"},
    {"number": 72, "spelling": "Seventy-Two"},
    {"number": 73, "spelling": "Seventy-Three"},
    {"number": 74, "spelling": "Seventy-Four"},
    {"number": 75, "spelling": "Seventy-Five"},
    {"number": 76, "spelling": "Seventy-Six"},
    {"number": 77, "spelling": "Seventy-Seven"},
    {"number": 78, "spelling": "Seventy-Eight"},
    {"number": 79, "spelling": "Seventy-Nine"},
    {"number": 80, "spelling": "Eighty"},
    {"number": 81, "spelling": "Eighty-One"},
    {"number": 82, "spelling": "Eighty-Two"},
    {"number": 83, "spelling": "Eighty-Three"},
    {"number": 84, "spelling": "Eighty-Four"},
    {"number": 85, "spelling": "Eighty-Five"},
    {"number": 86, "spelling": "Eighty-Six"},
    {"number": 87, "spelling": "Eighty-Seven"},
    {"number": 88, "spelling": "Eighty-Eight"},
    {"number": 89, "spelling": "Eighty-Nine"},
    {"number": 90, "spelling": "Ninety"},
    {"number": 91, "spelling": "Ninety-One"},
    {"number": 92, "spelling": "Ninety-Two"},
    {"number": 93, "spelling": "Ninety-Three"},
    {"number": 94, "spelling": "Ninety-Four"},
    {"number": 95, "spelling": "Ninety-Five"},
    {"number": 96, "spelling": "Ninety-Six"},
    {"number": 97, "spelling": "Ninety-Seven"},
    {"number": 98, "spelling": "Ninety-Eight"},
    {"number": 99, "spelling": "Ninety-Nine"},
    {"number": 100, "spelling": "One Hundred"},
  ];

  EnglishNumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Numbers 1-100'),
        backgroundColor: Colors.green,
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
          itemCount: englishNumbers.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      englishNumbers[index]["number"].toString(),
                      style: const TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      englishNumbers[index]["spelling"],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
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
