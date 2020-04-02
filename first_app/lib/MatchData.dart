abstract class Animal {
  
}

mixin Legs on Animal {
  void run(){
    print("It is running");
  }
}



class MatchData extends Animal {
  String t1, t2, time, date;

  MatchData({this.t1, this.t2, this.time, this.date});

}


/*
  Scaffold - AppBar
  Container 
  Row - horz ; children: <Wdiget>[]
  Column - vert
  ListView
  ListView.Builder(Card())
  Text("")
  FlatButton() - onPressed: () => {}
  RaisedButton() - -""-
  Duration(seconds: )
  Theme()
  Navigatorednbk.....(PageOne(tikdjbwk))


  Assignment: 
  1. Login -> NewPage()

*/

