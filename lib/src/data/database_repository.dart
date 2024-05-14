import 'package:messagme/src/domain/movie.dart';

abstract class DatabaseRepository {
    List<Movie> getMovies();
}