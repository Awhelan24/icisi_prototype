import 'package:flutter/material.dart';
import 'package:icisi_prototype_1/ui/sector_widget.dart';


///Sector Route (screen)
/// main page for the app, header, list of sectors,
/// and bottom navigation bar

class SectorHomePage extends StatefulWidget {
//  SectorRoute({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new _MainAppState();
  }
}

///make correct number of rows (1)
///
/// For portrait we make a listview from list of sectors
class _MainAppState extends State<SectorHomePage> {

  static const _sectorNames = <String>[
    'Nuclear',
  ];

  static const _baseColors = <Color>[
    Colors.grey,
  ];

    Widget _buildSectorWidget(List<Widget> sectors) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => sectors[index],
      itemCount: sectors.length,
    );
  }


  @override
  Widget build(BuildContext context) {
    final sectors = <Sector>[];

    for (var i = 0; i < _sectorNames.length; i++) {
      sectors.add(Sector(
        name: _sectorNames[i],
        color: _baseColors[i],
        iconLocation: const IconData(0xe900, fontFamily: 'icomoon'),
      ));
    }

    final listView = Container(
      color: Colors.grey,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildSectorWidget(sectors),
    );

//    final appBar = AppBar(
//      title: new Image.asset(
//        'images/logoDark.png',
//        fit: BoxFit.cover,
//        color: Colors.black,
//      ),
//      backgroundColor: _backgroundColor,
//      centerTitle: true,
//    );

//    final bottomNavigationBar = BottomNavigationBar(
//        items: [
//          new BottomNavigationBarItem(
//              icon: new Icon(Icons.home),
//              title: new Text("Home"),
//              backgroundColor: Colors.blueGrey),
//          new BottomNavigationBarItem(
//              icon: new Icon(Icons.star),
//              title: new Text("Favorites"),
//              backgroundColor: Colors.blueGrey),
//          new BottomNavigationBarItem(
//              icon: new Icon(Icons.person),
//              title: new Text("Login"),
//              backgroundColor: Colors.blueGrey),
//          new BottomNavigationBarItem(
//              icon: new Icon(Icons.settings),
//              title: new Text("Settings"),
//              backgroundColor: Colors.blueGrey),
//          new BottomNavigationBarItem(
//              icon: new Icon(Icons.business_center),
//              backgroundColor: Colors.blueGrey,
//              title: new Text("About Us")),
//        ],
//    );

    return Scaffold(
      //appBar: appBar,
      body: listView,
      //bottomNavigationBar: bottomNavigationBar,
    );
  }
}