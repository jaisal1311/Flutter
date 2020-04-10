
import 'package:flutter/material.dart';
import 'package:worldtime/pages/chooseLocation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data;

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    data.forEach((k,v) => print('$k: $v'));


    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 120.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Location())
                    );
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['loc'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize:65.0,
                  letterSpacing: 2.0,
                ),
              )
            ]
          ),
        )
    );
  }


}
