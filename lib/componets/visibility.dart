import 'package:flutter/material.dart';

class WeatherVisibility extends StatelessWidget {
  const WeatherVisibility({super.key, required this.visibility});

  final String visibility;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text('$visibility km', style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
