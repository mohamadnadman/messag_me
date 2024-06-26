import 'package:flutter/material.dart';
import 'package:messagme/src/data/database_repository.dart';

class BarbieGame extends StatelessWidget {
    final DatabaseRepository databaseRepository;

  const BarbieGame(this.databaseRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(172, 61, 26, 107),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 80),
            _buildButtonColumn(),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonColumn() {
    final List<String> names = ['MIRA', 'LISA', 'SILVA', 'DIANA'];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: names
          .map((name) => Padding(
                padding: const EdgeInsets.only(bottom: 39.03),
                child: _buildButton(name),
              ))
          .toList(),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      width: 164.02,
      height: 69.06,
      decoration: ShapeDecoration(
        gradient:const  LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF65477E), Color(0x0065477E)],
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2.25, color: Color(0xFF3594D2)),
          borderRadius: BorderRadius.circular(22.14),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFDE46D8),
            fontSize: 44.68,
            fontFamily: 'Caveat Brush',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
