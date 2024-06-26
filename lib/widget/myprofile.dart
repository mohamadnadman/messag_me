import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Platz für das Profilfoto
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              // Hier kannst du das Profilfoto einfügen
            ),
            const SizedBox(height: 20),
            // Telefonnummer
            const Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 10),
                Text(
                  'Phone Number: +1234567890',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Empfehlung für WriteMe
            const Text(
              'Recommendation for BarbieLexikin:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 152, 82, 150),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'BarbieLexikon is a fantastic app to discover everything about Barbies movies and clothes. Immerse yourself in the fascinating world of Barbie and explore her endless adventures! With our app, you can not only learn all about Barbie but also shop for her dolls directly. Let yourself be enchanted by the beauty and elegance of Barbies world and join her on her exciting journeys. Dive in and experience the magic of BarbieLexikon!',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
