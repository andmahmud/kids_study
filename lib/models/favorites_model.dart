import 'package:flutter/foundation.dart';

class FavoritesModel extends ChangeNotifier {
  final List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void addFavorite(String caption) {
    if (!_favorites.contains(caption)) {
      _favorites.add(caption);
      notifyListeners();
    }
  }

  void removeFavorite(String caption) {
    if (_favorites.contains(caption)) {
      _favorites.remove(caption);
      notifyListeners();
    }
  }
}
