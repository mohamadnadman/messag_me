import 'package:flutter/material.dart';
import 'package:messagme/src/data/mock_database.dart';
import 'package:messagme/src/domain/movie.dart';

class MovieOverview extends StatefulWidget {
  const MovieOverview({super.key});

  @override
  State<MovieOverview> createState() => _MovieOverviewState();
}

class _MovieOverviewState extends State<MovieOverview> {
  late Future<List<Movie>> moviesFuture;

  @override
  void initState() {
    super.initState();
    MockDatabase mockDatabase = MockDatabase();
    moviesFuture = mockDatabase.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: const Color.fromARGB(172, 61, 26, 107),
        title: const Center(
          child: Text(
            'Filmübersicht',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: FutureBuilder<List<Movie>>(
        future: moviesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Loading state
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Error state
            return const Center(child: Icon(Icons.error));
          } else if (snapshot.hasData) {
            // Data is ready
            List<Movie>? movies = snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: movies?.length ?? 0,
              itemBuilder: (context, index) {
                Movie movie = movies![index];
                return Card(
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
              },
            );
          } else {
            // No data state
            return const Center(child: Text('No movies found'));
          }
        },
      ),
    );
  }
}
