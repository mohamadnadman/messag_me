import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(172, 61, 26, 107),
        title: const Center(
          child: Text(
            //'Write Me',
            'Geschichte Barbie',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const <Widget>[
            Text(
             "The Story of Barbie" ,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Barbie was introduced on March 9, 1959, by Ruth Handler and was manufactured by the company Mattel, Inc.' 
              'Ruth Handler developed the doll after observing her daughter, Barbara, playing with paper dolls and assigning them adult roles.'
              ' Barbie quickly became a cultural phenomenon and remains one of the most iconic toy dolls worldwide to this day.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
             "Barbie's Beginnings" ,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "The first Barbie doll wore a black and white striped swimsuit and was available in blonde or brunette. Since her introduction, Barbie has taken on many different roles,' including fashion designer, doctor, astronaut, and president.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Barbie's Influence",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text("Over the years, Barbie has undergone many changes and has been praised for both her diversity and her ability to inspire children. Despite some controversies surrounding her body proportions and the beauty ideals she portrays, Barbie remains an iconic figure in popular culture."
              ,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Die moderne Barbie',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Heute gibt es Barbie in vielen verschiedenen Ethnien, mit '
              'unterschiedlichen Körpertypen und Berufen. Mattel hat sich bemüht, '
              'eine vielfältigere und realistischere Puppe zu schaffen, die '
              'Kinder auf der ganzen Welt repräsentiert.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
