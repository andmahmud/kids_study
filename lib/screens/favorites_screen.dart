import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/favorites_model.dart';

class FavoritesScreen extends StatelessWidget {
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
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      favoritesModel.removeFavorite(caption);
                    },
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
