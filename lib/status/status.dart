import 'package:flutter/material.dart';
import 'package:whatsapp/status/person.dart';

class Status extends StatelessWidget {
  final Person status;

  const Status({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 30,
            child: Image.asset('assets/microphone.png'),
          ),
          Text(status.name),
        ],
      ),
    );
  }
}
