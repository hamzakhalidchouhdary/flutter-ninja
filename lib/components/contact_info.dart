import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.type, required this.content});

  final String type;
  final String content;

  IconData getIcon() {
    switch (type.toUpperCase()) {
      case 'EMAIL':
        return Icons.mail;
      case 'PHONE':
        return Icons.phone;
      case 'ADDRESS':
        return Icons.location_pin;
      default:
        return Icons.abc;
    }
  }

  @override
  Widget build(BuildContext context) {
    getIcon();
    return Row(
      children: [
        Icon(
          getIcon(),
          color: Colors.grey,
          size: 15.0,
        ),
        const SizedBox(width: 3.0),
        Text(
          content.toUpperCase(),
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0
          ),
        )
      ],
    );
  }
}
