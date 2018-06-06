import 'package:flutter/material.dart';
import '../pojo/movie.dart';

class MovieListItem extends StatelessWidget {
  final Movie _movie;

  MovieListItem(this._movie);

  @override
  Widget build(BuildContext context) {
    return new GridTile(
      child: new InkWell(
        splashColor: Colors.blueAccent,
        enableFeedback: true,
        onTap: () => _onTileClicked(_movie.id),
        child: new Container(
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.blueAccent)
            ),
            child: new Column(
              children: <Widget>[
                new Container(
                    padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: new Image.network(
                      _movie.poster_url,
                      fit: BoxFit.cover,
                    )
                ),
                new Container(
                  padding: new EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Text(
                          _movie.title,
                          style: new TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                    padding: new EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          padding: new EdgeInsets.all(3.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(3.0),
                              color: Colors.greenAccent
                          ),
                          child: new Text(
                            _movie.type,
                            style: new TextStyle(fontSize: 8.0),
                          ),
                        ),
                        new Container(
                          width: 5.0,
                        ),
                        new Container(
                          padding: new EdgeInsets.all(3.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(3.0),
                              color: Colors.blueAccent
                          ),
                          child: new Text(
                            _movie.year,
                            style: new TextStyle(fontSize: 8.0),
                          ),
                        )
                      ],
                    )
                ),
              ],
            )
        ),
      ),
    );
  }

  void _onTileClicked(int index){
    debugPrint("You tapped on item $index");
  }
}