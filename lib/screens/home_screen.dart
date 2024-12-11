import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sigma Caption App'),
      ),
      body: SingleChildScrollView( // Makes the entire page scrollable
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/captions');
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurple,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Icon(Icons.edit, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text(
                          "Go to Captions",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/favorites');
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.redAccent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Icon(Icons.favorite, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text(
                          "Go to Favorites",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sad_captions');
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.blueGrey,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Icon(Icons.sentiment_dissatisfied, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text(
                          "Go to Sad Captions",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
