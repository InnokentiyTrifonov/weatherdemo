import 'package:flutter/material.dart';

class FeelsLike extends StatelessWidget {
  const FeelsLike({super.key, required this.feelsLikeC});

  final String feelsLikeC;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(feelsLikeC, style: Theme.of(context).textTheme.bodySmall),
        const Text('°', style: TextStyle(color: Colors.white, fontSize: 15))
      ],
    ));
  }
}
