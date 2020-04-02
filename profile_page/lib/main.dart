
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level = 1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        leading: GestureDetector(
          child: Icon(
            Icons.menu
          ),
        ),
        actions: <Widget>[
          Icon(Icons.settings)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/my.jpg')
              )
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[400],
            ),
            Text(
              "Name",
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Jaisal Shah",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.amber,
                  fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "Level",
              style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "$level",
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amber,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
                SizedBox(width: 10.0,),
                Text(
                  "abc@gmail.com",
                  style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

