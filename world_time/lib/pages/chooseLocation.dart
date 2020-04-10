

import 'package:flutter/material.dart';
import 'package:worldtime/pages/Home.dart';
import 'package:worldtime/pages/Loading.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chosse Location'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('$counter'),
          onPressed: () {
            setState(() {
              counter ++;
            });
          },
        ),
      ),
    );
  }
}
