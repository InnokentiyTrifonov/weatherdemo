import 'package:flutter/material.dart';

class WindSpeed extends StatelessWidget {
  const WindSpeed({super.key, required this.windspeedKmph});

  final String windspeedKmph;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$windspeedKmph km/h',
          style: Theme.of(context).textTheme.labelSmall),
    );
  }
}
