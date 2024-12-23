import 'package:flutter/material.dart';

class BanglaNumbersPage extends StatelessWidget {
  // List of Bengali numbers (1-100) and their spellings
  final List<Map<String, dynamic>> banglaNumbers = [
    {"number": 1, "spelling": "এক"},
    {"number": 2, "spelling": "দুই"},
    {"number": 3, "spelling": "তিন"},
    {"number": 4, "spelling": "চার"},
    {"number": 5, "spelling": "পাঁচ"},
    {"number": 6, "spelling": "ছয়"},
    {"number": 7, "spelling": "সাত"},
    {"number": 8, "spelling": "আট"},
    {"number": 9, "spelling": "নয়"},
    {"number": 10, "spelling": "দশ"},
    {"number": 11, "spelling": "এগারো"},
    {"number": 12, "spelling": "বারো"},
    {"number": 13, "spelling": "তেরো"},
    {"number": 14, "spelling": "চৌদ্দ"},
    {"number": 15, "spelling": "পনেরো"},
    {"number": 16, "spelling": "ষোল"},
    {"number": 17, "spelling": "সতেরো"},
    {"number": 18, "spelling": "আঠারো"},
    {"number": 19, "spelling": "উনিশ"},
    {"number": 20, "spelling": "বিশ"},
    {"number": 21, "spelling": "একুশ"},
    {"number": 22, "spelling": "বাইশ"},
    {"number": 23, "spelling": "তেইশ"},
    {"number": 24, "spelling": "চব্বিশ"},
    {"number": 25, "spelling": "পঁচিশ"},
    {"number": 26, "spelling": "ছাব্বিশ"},
    {"number": 27, "spelling": "সাতাশ"},
    {"number": 28, "spelling": "আটাশ"},
    {"number": 29, "spelling": "ঊনত্রিশ"},
    {"number": 30, "spelling": "ত্রিশ"},
    {"number": 31, "spelling": "একত্রিশ"},
    {"number": 32, "spelling": "বত্রিশ"},
    {"number": 33, "spelling": "তেত্রিশ"},
    {"number": 34, "spelling": "চুয়াল্লিশ"},
    {"number": 35, "spelling": "পঁইত্রিশ"},
    {"number": 36, "spelling": "ছত্রিশ"},
    {"number": 37, "spelling": "সতত্রিশ"},
    {"number": 38, "spelling": "আটত্রিশ"},
    {"number": 39, "spelling": "ঊনচল্লিশ"},
    {"number": 40, "spelling": "চল্লিশ"},
    {"number": 41, "spelling": "একতল্লিশ"},
    {"number": 42, "spelling": "বাত্তাল্লিশ"},
    {"number": 43, "spelling": "পঁইত্রাল্লিশ"},
    {"number": 44, "spelling": "চুয়াল্লিশ"},
    {"number": 45, "spelling": "পঁইত্রিশ"},
    {"number": 46, "spelling": "ছেচল্লিশ"},
    {"number": 47, "spelling": "সাতচল্লিশ"},
    {"number": 48, "spelling": "আটচল্লিশ"},
    {"number": 49, "spelling": "ঊনপঞ্চাশ"},
    {"number": 50, "spelling": "পঞ্চাশ"},
    {"number": 51, "spelling": "একান্ন"},
    {"number": 52, "spelling": "বাহান্ন"},
    {"number": 53, "spelling": "পঁইত্রিংশ"},
    {"number": 54, "spelling": "চুয়ান্ন"},
    {"number": 55, "spelling": "পঁচান্ন"},
    {"number": 56, "spelling": "ছাপ্পান্ন"},
    {"number": 57, "spelling": "সাতান্ন"},
    {"number": 58, "spelling": "আটান্ন"},
    {"number": 59, "spelling": "ঊনষাট"},
    {"number": 60, "spelling": "ষাট"},
    {"number": 61, "spelling": "একষট্টি"},
    {"number": 62, "spelling": "বাষট্টি"},
    {"number": 63, "spelling": "তিরষট্টি"},
    {"number": 64, "spelling": "চুরাশি"},
    {"number": 65, "spelling": "পঁইষট্টি"},
    {"number": 66, "spelling": "ছেষট্টি"},
    {"number": 67, "spelling": "সাতষট্টি"},
    {"number": 68, "spelling": "আটষট্টি"},
    {"number": 69, "spelling": "ঊনসত্তর"},
    {"number": 70, "spelling": "সত্তর"},
    {"number": 71, "spelling": "একাত্তর"},
    {"number": 72, "spelling": "বাহাত্তর"},
    {"number": 73, "spelling": "পঁচাত্তর"},
    {"number": 74, "spelling": "চুরাশি"},
    {"number": 75, "spelling": "পঁচাত্তর"},
    {"number": 76, "spelling": "ছাত্তর"},
    {"number": 77, "spelling": "সাতাত্তর"},
    {"number": 78, "spelling": "আটাত্তর"},
    {"number": 79, "spelling": "ঊনআশি"},
    {"number": 80, "spelling": "আশি"},
    {"number": 81, "spelling": "একাশি"},
    {"number": 82, "spelling": "বিরাশি"},
    {"number": 83, "spelling": "তিরাশি"},
    {"number": 84, "spelling": "চুরাশি"},
    {"number": 85, "spelling": "পঁচাশি"},
    {"number": 86, "spelling": "ছিয়াশি"},
    {"number": 87, "spelling": "সাতাশি"},
    {"number": 88, "spelling": "আটাশি"},
    {"number": 89, "spelling": "ঊননব্বই"},
    {"number": 90, "spelling": "নব্বই"},
    {"number": 91, "spelling": "একানব্বই"},
    {"number": 92, "spelling": "বিরানব্বই"},
    {"number": 93, "spelling": "তিরানব্বই"},
    {"number": 94, "spelling": "চুরানব্বই"},
    {"number": 95, "spelling": "পঁচানব্বই"},
    {"number": 96, "spelling": "ছিয়ানব্বই"},
    {"number": 97, "spelling": "সাতানব্বই"},
    {"number": 98, "spelling": "আটানব্বই"},
    {"number": 99, "spelling": "ঊনশত"},
    {"number": 100, "spelling": "শত"},
  ];

  BanglaNumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলা সংখ্যা (1-100)'),
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
          itemCount: banglaNumbers.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.green[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      banglaNumbers[index]["number"].toString(),
                      style: const TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      banglaNumbers[index]["spelling"],
                      style: const TextStyle(
                        fontSize: 24,
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
