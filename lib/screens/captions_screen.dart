import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/favorites_model.dart';

class CaptionsScreen extends StatelessWidget {
  final List<String> sigmaCaptions = [
    "Stay strong, even when you feel weak. দুর্বল অনুভব করলেও শক্ত থাকো।",
    "The world is yours to conquer.বিশ্ব তোমার জয় করার জন্য।",
    "Your vibe attracts your tribe.তোমার অনুভূতি তোমার গোষ্ঠীকে আকর্ষণ করে।",
    "Hustle until your haters ask if you're hiring.যতক্ষণ না তোমার বিরোধীরা জিজ্ঞেস করছে তুমি কি নিয়োগ দিচ্ছো।",
    "Dream big, stay humble.বড় স্বপ্ন দেখো, বিনয়ী থেকো।",
    "Stay strong, even when you feel weak.",
    "The world is yours to conquer.",
    "Your vibe attracts your tribe.",
    "Hustle until your haters ask if you're hiring.",
    "Dream big, stay humble.",
     "Stay strong, even when you feel weak.",
    "The world is yours to conquer.",
    "Your vibe attracts your tribe.",
    "Hustle until your haters ask if you're hiring.",
    "Dream big, stay humble.",
    "Stay strong, even when you feel weak.",
    "The world is yours to conquer.",
    "Your vibe attracts your tribe.",
    "Hustle until your haters ask if you're hiring.",
    "Dream big, stay humble.",
  ];

  void copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard '),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sigma Captions'),
        backgroundColor: Colors.deepPurple, // Custom AppBar color
      ),
      body: Consumer<FavoritesModel>(
        builder: (context, favoritesModel, child) {
          return ListView.builder(
            itemCount: sigmaCaptions.length,
            itemBuilder: (context, index) {
              String caption = sigmaCaptions[index];
              bool isFavorite = favoritesModel.favorites.contains(caption);

              return Card(
                margin: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 6,
                color: Colors.lightBlueAccent, // Custom Card color
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        caption,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Copy Button
                          IconButton(
                            icon: Icon(Icons.copy, color: Colors.blue),
                            onPressed: () {
                              copyToClipboard(context, caption);
                            },
                          ),
                          // Favorite Icon
                          IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              if (isFavorite) {
                                favoritesModel.removeFavorite(caption);
                              } else {
                                favoritesModel.addFavorite(caption);
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
