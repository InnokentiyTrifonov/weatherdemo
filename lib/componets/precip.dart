import 'package:flutter/material.dart';

class Precip extends StatelessWidget {
  const Precip({super.key, required this.precipMM});

  final String precipMM;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$precipMM mm',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
