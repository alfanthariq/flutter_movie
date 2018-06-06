import 'package:flutter/material.dart';
import '../pojo/movie.dart';
import 'package:flutter_movie/helper/movie_list_item.dart';

class MovieList extends StatelessWidget{

  final List<Movie> _movie;

  MovieList(this._movie);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      childAspectRatio: (1/1.8),
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _movieLists(),
    );
  }

  List<MovieListItem> _movieLists(){
    return _movie.map((movie) => new MovieListItem(movie)).toList();
  }
}