

import 'package:flutter/material.dart';
import 'package:worldtime/pages/Home.dart';
import 'package:worldtime/pages/Loading.dart';
import 'package:worldtime/pages/chooseLocation.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/Loading',
    routes: {
      '/Loading': (context) => Loading(),
      '/Home': (context) => Home(),
      '/Location': (context) => Location(),
    },
  )
);

