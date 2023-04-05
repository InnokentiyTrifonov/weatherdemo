import 'package:flutter/material.dart';

class WindDirection extends StatelessWidget {
  const WindDirection({super.key, required this.winddir16Point});

  final String winddir16Point;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        winddir16Point,
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
