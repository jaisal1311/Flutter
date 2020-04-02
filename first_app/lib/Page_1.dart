import 'package:first_app/MatchData.dart';
import 'package:flutter/material.dart';

import 'main.dart';


MatchData matchData = MatchData(t1: 'kdb', t2: 'india');



class PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text(matchData.t2)
            
          ],
        ),
      ),
    );
  }
}