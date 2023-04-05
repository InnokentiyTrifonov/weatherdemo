import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.onRetry});

  final Function onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Error',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            'Oops... something went wrong.',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                onRetry();
              },
              child: Text(
                'Try again',
                style: Theme.of(context).textTheme.bodyMedium,
              ))
        ],
      ),
    );
  }
}
