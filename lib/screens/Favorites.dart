import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart'; // For Clipboard functionality
import '../models/favorites_model.dart';

class Favorites extends StatelessWidget {
  // Function to copy the caption to clipboard
  void copyToClipboard(BuildContext context, String caption) {
    Clipboard.setData(ClipboardData(text: caption));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Favorite Captions')),
        backgroundColor: const Color.fromARGB(255, 53, 164, 184), // Custom color for AppBar
      ),
      body: Consumer<FavoritesModel>(
        builder: (context, favoritesModel, child) {
          if (favoritesModel.favorites.isEmpty) {
            return const Center(
              child: Text(
                'No favorites yet!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            );
          }
          return ListView.builder(
            itemCount: favoritesModel.favorites.length,
            itemBuilder: (context, index) {
              String caption = favoritesModel.favorites[index];
              return Card(
                margin: const EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 6,
                color: Colors.teal.shade100, // Custom color for Card
                child: ListTile(
                  title: Text(
                    caption,
                    style: const TextStyle(fontSize: 18, color: Colors.black), // Text color
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Copy Button with custom color
                      IconButton(
                        icon: const Icon(Icons.copy, color: Colors.blue), // Copy icon color
                        onPressed: () {
                          copyToClipboard(context, caption);
                        },
                      ),
                      // Delete Button with custom color
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red), // Delete icon color
                        onPressed: () {
                          favoritesModel.removeFavorite(caption);
                        },
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
