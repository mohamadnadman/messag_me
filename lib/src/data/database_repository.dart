import 'package:messagme/src/domain/movie.dart';
import 'package:messagme/src/domain/images.dart';


abstract class DatabaseRepository {
    Future<List<Movie>> getMovies();
    Future<List<ImagesDetails>> getImages();
    
}