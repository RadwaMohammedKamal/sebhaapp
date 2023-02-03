import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/timepraymodel.dart';
class TimePray {

 static gettimepray() async {
    var url = Uri.parse(
        "https://muslimsalat.com/cairo/daily/30-01-2023.json?key=e1240af194bf8f09dd87ad9216934773");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body)["items"][0];
    TimePrayModel model= TimePrayModel(date_for: responseBody["date_for"], fajr: responseBody["fajr"], dhuhr: responseBody["dhuhr"], asr: responseBody["asr"], maghrib: responseBody["maghrib"], isha: responseBody["isha"]);
return model;
  }
}