import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Biodata information for the user
  final biodata = <String, String>{};

  // Constructor to initialize biodata
  MyApp({super.key}) {
    biodata['image'] = 'assets/lely.jpeg';
    biodata['name'] = 'Lely Legiana Aprilia';
    biodata['email'] = 'lelylegianaaprilia25@gmail.com';
    biodata['phone'] = '089519108686';
    biodata['hobby'] = 'Badminton';
    biodata['addr'] = 'Mengger Girang';
    biodata['desc'] = '''Tidak Ada''';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Biodata",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 176, 159, 206),
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Aplikasi Biodata'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Display user image
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 176, 159, 206),
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Image.asset(
                    biodata['image'].toString(),
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: 10),
                // Display user information in rounded cards
                buildRoundedCard("Name", biodata['name']!),
                buildRoundedCard("Email", biodata['email']!),
                buildRoundedCard("Phone", biodata['phone']!),
                buildRoundedCard("Hobby", biodata['hobby']!),
                buildRoundedCard("Address", biodata['addr']!),
                buildRoundedCard("Description", biodata['desc']!),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget to build rounded cards with gradient background
  Widget buildRoundedCard(String title, String value) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 176, 159, 206),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
