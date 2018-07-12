import 'package:flutter/material.dart';

final _backgroundColor = Colors.blueGrey.shade500;

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AboutState();
  }
}

class AboutState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: new Image.asset(
        'images/logoDark.png',
        fit: BoxFit.cover,
        color: Colors.black,
      ),
      backgroundColor: _backgroundColor,
      centerTitle: true,
    );

    //BODY ABOUT US
    final body = Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Container(
          child: Image.asset(
            'images/icisiNight.jpg',
            fit: BoxFit.cover,
          ),
          color: Colors.blueGrey.shade500,
        ),
      ),
    );
      // ignore: duplicate_named_argument
//      child: Padding(
//        padding: EdgeInsets.all(8.0),
//        child: new Text(
//          "ICISI's mission is to act as a 'bridge builder' to inspire and revolutionize imaginative solutions that protext the world's most critical assets from cyber threats",
//        ),
//      ),
//    );

    //BOTTOM NAVIGATION??

    return new Scaffold(
      backgroundColor: Colors.grey,
      //appBar: appBar,
      body: body,
      //bottomNavigationBar: bottomNavigationBar,
    );
  }
}
