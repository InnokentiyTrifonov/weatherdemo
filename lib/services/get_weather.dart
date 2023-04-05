import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';

Future<WeatherResponse> getWeatherFromApi({String? location}) async {
  String position = location ?? '';
  var response =
      await http.get(Uri.parse('https://wttr.in/$position?format=j1'));
  var body = jsonDecode(response.body);
  return WeatherResponse.fromJson(body);
}
