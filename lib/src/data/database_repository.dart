import 'package:messagme/src/domain/movie.dart';
import 'package:messagme/src/features/authentication/fotos/images_class.dart';


abstract class DatabaseRepository {
    Future<List<Movie>> getMovies();
     Future<List<ImagesDetails>> getImages();
    
}