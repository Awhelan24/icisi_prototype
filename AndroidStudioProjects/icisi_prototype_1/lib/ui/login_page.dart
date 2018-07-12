import 'package:flutter/material.dart';

  class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<LoginPage> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade500,
      ),
      backgroundColor: Colors.grey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            //image profile
            new Image.asset(
              'images/logoDark.png',
              width: 90.00,
              height: 90.0,
              color: Colors.black,
            ),
            new Container(
              height: 180.0,
              width: 300.0,
              color: Colors.grey,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),
                  ),
                  new Center(
                    child: new Row(children: <Widget>[
                      //login button
                      new Padding(padding: EdgeInsets.all(10.5)),
                      new Container(
                        margin: const EdgeInsets.only(left: 38.0),
                        child: new RaisedButton(
                          onPressed: () => debugPrint("Login Pressed"),
                          color: Colors.red,
                          child: new Text(
                            "Login",
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 16.9,
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(right: 38.0),
                        child: new RaisedButton(
                          onPressed: () => debugPrint("Clear Pressed"),
                          color: Colors.red,
                          child: new Text(
                            "Clear",
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 16.9,
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
