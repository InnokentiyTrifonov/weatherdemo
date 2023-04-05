import 'package:flutter/material.dart';

class LocationText extends StatelessWidget {
  const LocationText({super.key, required this.locationText});
  final String locationText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        locationText,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
