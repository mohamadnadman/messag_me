import 'package:flutter/material.dart';
import 'package:messagme/src/features/authentication/barby/barbie_game.dart';
import 'package:messagme/src/features/authentication/fotos/gallery_fotos.dart';
import 'package:messagme/src/features/history/presentation/history_page.dart';
import 'package:messagme/src/features/movies/presentation/movie_overview.dart';
import 'package:messagme/widget/drawe_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            margin: EdgeInsets.all(9.0),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HistoryPage()),
              ),
              splashColor: Colors.amberAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                const    Icon(
                      Icons.history,
                      size: 60.0,
                    ),
                    Text("Geschichte", style: new TextStyle(fontSize: 18.0))
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
                MaterialPageRoute(builder: (context) => const MovieOverview()),
              ),
              splashColor: Colors.amberAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                   const Icon(
                      Icons.movie,
                      size: 60.0,
                    ),
                    Text("Filme", style: new TextStyle(fontSize: 18.0))
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
                MaterialPageRoute(builder: (context) => const GalleryFotos()),
              ),
              splashColor: Colors.amberAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                   const Icon(
                      Icons.picture_in_picture_alt_rounded,
                      size: 60.0,
                    ),
                    Text("Gallery", style: new TextStyle(fontSize: 18.0))
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
                MaterialPageRoute(builder: (context) => const BarbieGame()),
              ),
              splashColor: Colors.amberAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                   const Icon(
                      Icons.gamepad,
                      size: 60.0,
                    ),
                    Text("Clothes", style: new TextStyle(fontSize: 18.0))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawe_bar(),
    );
  }
}
