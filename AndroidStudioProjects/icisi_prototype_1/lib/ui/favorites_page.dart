import 'package:flutter/material.dart';

final _backgroundColor = Colors.blueGrey.shade500;

class FavoritesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FavoritesState();
  }
}

class FavoritesState extends State<FavoritesPage> {

  //final _favorites = <FavControl>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appBar = AppBar(
      title: new Image.asset(
        'images/logoDark.png',
        fit: BoxFit.cover,
        color: Colors.black,
      ),
      backgroundColor: _backgroundColor,
      centerTitle: true,
    );

    //BODY LISTVIEW
    final body = new Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
    );

//  Widget _buildRow(FavControl saved) {
//    return ListTile(
//      title: Text(
//        saved.asPascalCase,
//        style: new TextStyle(
//          fontSize: 18.0
//        ),
//
//      ),
//    );
//  }
//
//
//
//    //BOTTOMNAVIGATOR?
/////
//  Widget _buildFavorites() {
//    return ListView.builder(
//        padding: const EdgeInsets.all(16.0),
//        itemBuilder: (context, i) {
//          if (i.isOdd) return Divider();
//
//          final index = i ~/ 2;
//
//          if (index >= _suggestions.length) {
//
////            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_favorites[index]);
//        }
//    );
//  }
    return Scaffold(
      //appBar: appBar,
      backgroundColor: Colors.grey,
      body: body,
      //bottomNavigationBar: bottomNavigationBar,
    );
  }

}