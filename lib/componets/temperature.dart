import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key, required this.tempC});
  final String tempC;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(tempC,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 85,
                fontWeight: FontWeight.w900)),
        const Text(
          '°',
          style: TextStyle(
              color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
