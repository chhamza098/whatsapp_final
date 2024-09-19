import 'package:flutter/material.dart';

class Headeropenui extends StatelessWidget {
  final String text;
  final IconData icon;

  const Headeropenui({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 25,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
