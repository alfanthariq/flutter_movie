import 'package:flutter/material.dart';
import 'package:flutter_movie/helper/movie_list.dart';
import 'package:flutter_movie/pojo/movie.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

class MainActivity extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

const kMovies = const <Movie>[
  Movie(
      id: 1,
      title: 'Romeo and Juliet dan nana nanasudgagkaa',
      year: '2018',
      type: 'Movie',
      poster_url: 'https://ia.media-imdb.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'
  ),
  Movie(
      id: 2,
      title: 'Hana',
      year: '2018',
      type: 'Movie',
      poster_url: 'https://ia.media-imdb.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'
  ),
  Movie(
      id: 3,
      title: 'Romeo and Juliet',
      year: '2018',
      type: 'Movie',
      poster_url: 'https://ia.media-imdb.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'
  ),
  Movie(
      id: 4,
      title: 'Hana',
      year: '2018',
      type: 'Movie',
      poster_url: 'https://ia.media-imdb.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'
  ),
  Movie(
      id: 5,
      title: 'Romeo and Juliet',
      year: '2018',
      type: 'Movie',
      poster_url: 'https://ia.media-imdb.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'
  ),
  Movie(
      id: 6,
      title: 'Hana',
      year: '2018',
      type: 'Movie',
      poster_url: 'https://ia.media-imdb.com/images/M/MV5BMTg2MzI1MTg3OF5BMl5BanBnXkFtZTgwNTU3NDA2MTI@._V1_SX300.jpg'
  )
];

class HomePage extends State<MainActivity>{
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  HomePage(){
    searchBar = new SearchBar(
        inBar: true,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted);
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('Movie Flutter'),
        actions: [searchBar.getSearchAction(context)]);
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        key: _scaffoldKey,
        appBar: searchBar.build(context),
        body: new MovieList(kMovies)
      ),
    );
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }
}