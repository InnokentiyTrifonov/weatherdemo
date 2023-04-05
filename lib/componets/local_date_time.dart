import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Localdatetime extends StatelessWidget {
   Localdatetime({super.key, required this.localdatetimeText});
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
