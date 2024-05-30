import 'dart:math';

import 'package:messagme/src/data/database_repository.dart';
import 'package:messagme/src/domain/movie.dart';

class MockDatbase implements DatabaseRepository {
  // Movies mocken
  List<Movie> movies = [
    Movie(
      'Barbie: Princess Adventure',
      'Conrad Helten',
      2020,
      'Barbie discovers what it\'s ....',
      'https://de.web.img2.acsta.net/pictures/20/12/22/04/19/3209303.jpg'
    ),
    Movie(
      'Barbie in the Nutcracker',
      'Owen Hurley',
      2001,
      'Barbie stars as Clara in this be...',
      'https://m.media-amazon.com/images/M/MV5BMTk0Y2E2MjgtZDBhNi00OTQ3LTkyYzAtNTdmNzRhYTczZWI2XkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_.jpg'
    ),
    Movie(
      'Barbie as The Princess and the Pauper',
      'William Lau',
      2004,
      'In her first musical, Barbie ...',
      'https://m.media-amazon.com/images/I/51GZGT0ETPL._AC_UF894,1000_QL80_DpWeblab_.jpg'
    ),
    Movie(
      'Barbie und das Diamantschloss',
      'Angelina Petzold',
      2009,
      'In herSecond musical, Barbie ...',
      'https://media1.jpc.de/image/w1155/misc/4/5050582567403.jpg'
    ),
     Movie(
      'Barbie ',
      'Greta Gerwig',
      2023,
      'Wer im Barbie-Land lebt, ist da......',
     'https://play-lh.googleusercontent.com/Zqm6RgezVv21S3qf7g1ICWhkfGX5xvNlK6dTa4ydCjHoE3KlEM1YVJu2qnEgkaTmHa6-lyMF9viYsjJfIvIA=w240-h480-rw'
    ),
     Movie(
      'Barbie Poster Movie ',
      'Margot Robbie',
      2023,
      'barbie is the best......',
     'https://www.closeup.de/media/oart_0/oart_b/oart_101133/1240598_G882070.JPG'
    ),
    Movie(
      'Barbie and her sister ',
      'Leen verson',
      2013,
      'Barbie und ihre Schwestern Skipper, Stacie und....',
     'https://i.weltbild.de/p/barbie-und-ihre-schwestern-in-das-grosse-129592622.jpg?v=3&wp=_max'
    ),
    Movie(
      'Barbie world ',
      'Rayan Gosling',
      2023,
      'Margot Robbie and Ryan Gosling star as the stereotypical versions of Barbie....',
     'https://i0.wp.com/english.publictv.in/wp-content/uploads/2023/08/Barbie.jpg'
    ),
     Movie(
      'The Barbie Diaries ',
      'Eric Fogel',
      2006,
      'In this film, Barbie is portrayed as a typical American teenager who is a sophomore in high school who enco...',
     'https://upload.wikimedia.org/wikipedia/en/thumb/3/34/The_Barbie_Diaries_poster.jpg/220px-The_Barbie_Diaries_poster.jpg'
    ),
   Movie(
      'Barbie Princess Adventure ',
      'Sing Along',
      2022,
      'The adventure begins when Barbie and her friends travel to the country of Floravia to meet Princess Amelia, who looks a lot like Barbie. Prin...',
     'https://i.ytimg.com/vi/Pdc_eWteiPc/maxresdefault.jpg'
    ),
  ];

  @override
 Future< List<Movie>> getMovies()async {
  int delay = Random().nextInt(3);
  await Future.delayed(Duration(seconds: delay));
    return movies;
  }
}