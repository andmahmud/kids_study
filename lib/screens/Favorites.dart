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
                margin: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 6,
                child: ListTile(
                  title: Text(
                    caption,
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Copy Button
                      IconButton(
                        icon: Icon(Icons.copy, color: Colors.blue),
                        onPressed: () {
                          copyToClipboard(context, caption);
                        },
                      ),
                      // Delete Button
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
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
