import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {

  List<Widget> getItems(){
    return <Widget>[
      Flexible(
        flex: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
      ),
      Flexible(
        flex: 6,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          child: Container(
            color: Colors.deepOrange,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {

    Orientation orientation = MediaQuery.of(context).orientation;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Orientation'
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.red,
        child: (orientation == Orientation.portrait)?
        Column(
          children: getItems(),
        )
        : Row(
              children: getItems(),
            )
        )
      );
  }
  // This widget is the root of your application.
}

