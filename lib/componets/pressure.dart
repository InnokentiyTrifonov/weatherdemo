import 'package:flutter/material.dart';

class Pressure extends StatelessWidget {
  const Pressure({super.key, required this.pressure});

  final String pressure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text('$pressure hPa', style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
