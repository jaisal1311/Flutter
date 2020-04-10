
import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:worldtime/pages/Home.dart';
import 'package:worldtime/pages/chooseLocation.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time;
  String loc;
  String flag;

  @override
  void initState() {
    super.initState();

    setupTime();
  }

  void setupTime() async{
    WorldTime instance = WorldTime(loc: 'Mumbai', flag: 'india.png', url: 'Asia/Kolkata');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/Home', arguments: {
      'loc' : instance.loc, 'time' : instance.time, 'flag' : instance.flag
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Text('Loading'),
      ),
    );
  }
}
