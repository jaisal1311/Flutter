import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        leading: IconButton(
          icon: Icon(Icons.dehaze),
        ),
      ),
      body: Container(),
      floatingActionButton: InkWell(
        onTap: (){},
        child: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}




