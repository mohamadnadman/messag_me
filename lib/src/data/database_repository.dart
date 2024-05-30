import 'package:messagme/src/domain/movie.dart';

abstract class DatabaseRepository {
    Future<List<Movie>> getMovies();
}