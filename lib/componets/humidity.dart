import 'package:flutter/material.dart';

class Huminidy extends StatelessWidget {
  const Huminidy({super.key, required this.humidity});

  final String humidity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$humidity %',
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
