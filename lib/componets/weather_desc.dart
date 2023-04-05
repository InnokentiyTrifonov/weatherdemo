import 'package:flutter/material.dart';

class TemperatureDesc extends StatelessWidget {
  const TemperatureDesc({super.key, required this.weatherDesc});

  final String weatherDesc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        weatherDesc,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
