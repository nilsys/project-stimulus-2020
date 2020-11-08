import 'package:flutter/material.dart';
import 'dart:ui';
import 'signup.page.dart';
import 'login.page.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.asset('assets/logo.png')),
            Container(
              margin: const EdgeInsets.only(bottom: 100, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      width: 150.0,
                      height: 60.0,
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('ENTRAR',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Color(0xFF011126),
                      )),
                  Container(
                      width: 150.0,
                      height: 60.0,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF011126),
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: new BorderRadius.circular(12.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text('CADASTRAR',
                            style: TextStyle(
                                color: Color(0xFF011126), fontSize: 20)),
                      )),
                ],
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 100),
                child: Image.asset(
                  'assets/logo-estimulo.png',
                  width: 200,
                )),
          ],
        ),
      ),
    );
  }
}