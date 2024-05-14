import 'package:flutter/material.dart';
import 'package:messagme/src/data/mock_database.dart';
import 'package:messagme/src/domain/movie.dart';

class MovieOverview extends StatelessWidget {
  const MovieOverview({super.key});

  @override
  Widget build(BuildContext context) {
    MockDatbase mockDatbase = MockDatbase();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: const Color.fromARGB(172, 61, 26, 107),
        title: const Center(
          child: Text(
            //'Write Me',
            'Filmübersicht',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: mockDatbase.movies.length,
          itemBuilder: (context, index) {
            Movie movie = mockDatbase.movies[index];
            return  Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      movie.coverImageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      movie.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Director: ${movie.director}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Year: ${movie.releaseYear}'),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
