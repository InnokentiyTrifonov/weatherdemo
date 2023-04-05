import 'package:flutter/material.dart';

class ObservationTime extends StatelessWidget {
  const ObservationTime({super.key, required this.observationTime});

final String observationTime;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(observationTime, style: const TextStyle(color: Colors.green, fontSize: 15)),
    );
  }
}