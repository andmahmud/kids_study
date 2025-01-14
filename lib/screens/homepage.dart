import 'package:flutter/material.dart';
import 'package:kids_study/screens/ArabiHorof.dart';
import 'package:kids_study/screens/BanglaBanjonborno.dart';
import 'package:kids_study/screens/BanglaSongkha.dart';
import 'package:kids_study/screens/BanglaSwarborno.dart';
import 'package:kids_study/screens/BengaliMonthname.dart';
import 'package:kids_study/screens/BengaliSeasons.dart';
import 'package:kids_study/screens/EnglishLetters.dart';
import 'package:kids_study/screens/EnglishMonthname.dart';
import 'package:kids_study/screens/EnglishNumbers.dart';
import 'package:kids_study/screens/EnglishSeasons.dart';
import 'package:kids_study/screens/banglaweekname.dart';
import 'package:kids_study/screens/englishweekname.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"title": "আরবি হরফ", "image": "assets/images/ArabicLetters.png", "page": ArabicLettersPage()},
    {"title": "বাংলা স্বরবর্ণ", "image": "assets/images/cat_icon.png", "page": BanglaSwarbornoPage()},
    {"title": "বাংলা ব্যঞ্জনবর্ণ", "image": "assets/images/cat_icon.png", "page": BanglaBanjanborno()},
    {"title": "বাংলা সংখ্যা", "image": "assets/images/cat_icon.png", "page": BanglaNumbersPage()},
    {"title": "ইংরেজি বর্ণ", "image": "assets/images/cat_icon.png", "page": EnglishLettersPage()},
    {"title": "ইংরেজি সংখ্যা", "image": "assets/images/cat_icon.png", "page": EnglishNumbersPage()},
    {"title": "বাংলা ৭ দিনের নাম ", "image": "assets/images/cat_icon.png", "page": BengaliWeekname()},
    {"title": "বাংলা ৬ ঋতুর নাম", "image": "assets/images/cat_icon.png", "page": BengaliSeasonsPage()},
    {"title": "বাংলা ১২ মাসের নাম", "image": "assets/images/cat_icon.png", "page": BengaliMonthsPage()},
    {"title": "ইংরেজি ৭ দিনের নাম", "image": "assets/images/cat_icon.png", "page": Englishweekname()},
    {"title": "ইংরেজি ৬ ঋতুর নাম", "image": "assets/images/cat_icon.png", "page": EnglishSeasonsPage()},
    {"title": "ইংরেজি ১২ মাসের নাম", "image": "assets/images/cat_icon.png", "page": EnglishMonthsPage()},
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('শিশু শিক্ষা', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/cat_icon.png'), 
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to a specific page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => items[index]["page"],
                  ),
                );
              },
              child: ItemCard(
                title: items[index]["title"]!,
                image: items[index]["image"]!,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title;
  final String image;

  const ItemCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}







