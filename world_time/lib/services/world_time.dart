import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime{
  String loc;
  String time;
  String url;
  String flag;

  WorldTime({this.loc, this.url, this.flag});

  Future<void> getTime() async {
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String datetime = data['utc_datetime'];
      String offsetHours = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));
      time = DateFormat.jm().format(now);    // Used for formatting date and time in human readable time.
//      time = now.toString();
//    print(time);
    } catch(e){
      time = 'Sorry..Timezone not found  :(';
      print(e);
    }

  }
}