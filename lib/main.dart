import 'package:flutter/material.dart';
import 'package:github_code/screens/homepage/homePage.dart';
import 'package:github_code/utils/transations.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.black,
  ),
  home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Colors.blueGrey[800],
                Colors.blueGrey[600],
                Colors.blueGrey[500],
                Colors.blueGrey[400],
              ],
            )),
            child: Center(
              child: Card(
                elevation: 10.0,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.blueGrey[500],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'email@example.com',
                              labelText: 'Email',
                            )),
                        TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: FlatButton(
                            color: Colors.blueGrey,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  ScaleRoute(
                                    page: HomePage(),
                                  ));
                            },
                            child: Text("Login", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
