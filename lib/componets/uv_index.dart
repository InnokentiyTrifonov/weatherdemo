import 'package:flutter/material.dart';

class UvIndex extends StatelessWidget {
  const UvIndex({super.key, required this.uvIndex});

  final String uvIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(uvIndex, style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
