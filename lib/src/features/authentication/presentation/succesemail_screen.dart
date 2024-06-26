import 'package:flutter/material.dart';
import 'package:messagme/src/data/database_repository.dart';
import 'package:messagme/src/features/home/presentation/home_view.dart';

class SuccEmailScreen extends StatelessWidget {
  final DatabaseRepository databaseRepository;

  const SuccEmailScreen(this.databaseRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 115, 79, 141),
            Color.fromARGB(255, 150, 94, 187),
            Color.fromARGB(255, 90, 47, 73),
            Color.fromARGB(255, 151, 130, 164),
            Color(0xff7F5D72),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // logo
                children: [
                 const SizedBox(
                    width: 100,
                    height: 200,
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/logo2.png'),
                      ),
                    ),
                  ),
                const  SizedBox(height: 70),
                  // text hello
                const  Text(
                    'You Welcom With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              const    SizedBox(height: 20),
                  //text welcome
                const  Center(
                    child: Text(
                      'You are One of Our Family Now, Be Happy and Start your First play With Us ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // butten confirm
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeView(databaseRepository)),
                        );
                      },
                      child: Container(
                        padding:const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(172, 11, 4, 20),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:const Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
