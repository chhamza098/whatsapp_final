import 'package:flutter/material.dart';
import 'package:whatsapp/home/user.dart';

class Chatui extends StatelessWidget {
  final User chat;
  final Function(User) onChatClicked;

  const Chatui({
    super.key,
    required this.chat, required this.onChatClicked,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChatClicked(chat);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Image.asset('assets/communities.png'),
              radius: 25,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        chat.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Text me!',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              chat.time,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
