import 'package:flutter/material.dart';

class PrimaryInfo extends StatelessWidget {
  const PrimaryInfo({super.key, required this.label, required this.content});

  final String label;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            letterSpacing: 2.0,
            color: Colors.grey,
            fontSize: 15.0
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          content.toUpperCase(),
          style: const TextStyle(
            color: Colors.amber,
            fontSize: 40.0,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}
