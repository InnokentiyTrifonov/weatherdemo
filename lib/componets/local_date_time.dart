import 'package:flutter/material.dart';

class Localdatetime extends StatelessWidget {
  const Localdatetime({super.key, required this.localdatetimeText});
  final String localdatetimeText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        localdatetimeText,
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
