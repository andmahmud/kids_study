import 'package:caption/screens/funny.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/sigma.dart';
import 'screens/Favorites.dart';
import 'screens/Sad.dart';
import 'models/favorites_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritesModel(),
      child: SigmaCaptionApp(),
    ),
  );
}




class SigmaCaptionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sigma Captions',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  HomeScreen(),
        '/captions': (context) => sigma(),
        '/favorites': (context) => Favorites(),
        '/sad_captions': (context) => Sad(), 
        '/funny_captions': (context) => funny(), 
      },
    );
  }
}
