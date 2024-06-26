import 'package:flutter/material.dart';
import 'package:messagme/src/data/database_repository.dart';
import 'package:messagme/src/features/authentication/barby/barbie_game.dart';
import 'package:messagme/src/features/movies/presentation/gallery_overview.dart';
import 'package:messagme/src/features/history/presentation/history_page.dart';
import 'package:messagme/src/features/movies/presentation/movie_overview.dart';
import 'package:messagme/widget/drawer_bar.dart';

class HomeView extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  const HomeView(this.databaseRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        actions: const [
          //Padding(
          //padding: EdgeInsets.only(right: 24),
          //child: Icon(
          //Icons.search,
          //),
          //),
        ],
        backgroundColor: const Color.fromARGB(172, 61, 26, 107),
        title: const Center(
          child: Text(
            //'Write Me',
            'Barbie Lexikon',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
// body: ListView.builder(
//   itemCount: 17,
//   physics: const BouncingScrollPhysics(),
//   itemBuilder: (context,index){
//   return const ChatUserCard();
// },

//   ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            margin: const EdgeInsets.all(9.0),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HistoryPage()),
              ),
              splashColor: Colors.amberAccent,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     Icon(
                      Icons.history,
                      size: 60.0,
                    ),
                    Text("Geschichte", style:  TextStyle(fontSize: 18.0))
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9.0),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MovieOverview(databaseRepository)),
              ),
              splashColor: Colors.amberAccent,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     Icon(
                      Icons.movie,
                      size: 60.0,
                    ),
                    Text("Filme", style: TextStyle(fontSize: 18.0))
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9.0),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GalleryFotos(databaseRepository)),
              ),
              splashColor: Colors.amberAccent,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     Icon(
                      Icons.picture_in_picture_alt_rounded,
                      size: 60.0,
                    ),
                    Text("Gallery", style: TextStyle(fontSize: 18.0))
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9.0),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BarbieGame(databaseRepository)),
              ),
              splashColor: Colors.amberAccent,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                     Icon(
                      Icons.gamepad,
                      size: 60.0,
                    ),
                    Text("Clothes", style: TextStyle(fontSize: 18.0))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerBar(databaseRepository),
    );
  }
}
