import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const FinalWeatherApp());
}

class FinalWeatherApp extends StatelessWidget {
  const FinalWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 19, 19, 19),
        textTheme: const TextTheme(
          // style of city name and temp
          labelLarge: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w900),
          // style of weather description
          labelMedium: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
          // style of date, wind, humidity and wind direction widgets
          labelSmall: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          // style of small text in widgets bottom
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      home: const HomePage(),
    );
  }
}
