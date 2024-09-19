import 'package:flutter/material.dart';
import 'package:whatsapp/chat_screen/headeropenui.dart';

class Chatheaderopen extends StatelessWidget {
  const Chatheaderopen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back),
                      Image.asset(
                        'assets/dots.png',
                        height: 17,
                        width: 17,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          child: Image.asset('assets/microphone.png'),
                        ),
                        Text(
                          'Zeeshan Khan Baloch',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text('+923015837918'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withAlpha(30),
                          border: Border.all(width: 0),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        child: Column(
                          children: [
                            Icon(Icons.message),
                            SizedBox(
                              height: 3,
                            ),
                            Text('Message'),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withAlpha(30),
                          border: Border.all(width: 0),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        child: Column(
                          children: [
                            Icon(Icons.call),
                            SizedBox(
                              height: 3,
                            ),
                            Text('Call'),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withAlpha(50),
                          border: Border.all(width: 0),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                        child: Column(
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              height: 3,
                            ),
                            Text('Share'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.monitor_heart),
                    ],
                  ),
                  Row(
                    children: [
                      Text('17 August 2020'),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text('Media, Links, and docs')),
                          Text('88'),
                          Icon(Icons.forward),
                        ],
                      ),
                      Divider(),
                      Divider(),
                      Column(
                        children: [
                          Headeropenui(
                            icon: Icons.notifications,
                            text: 'Notifications',
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Headeropenui(
                            icon: Icons.perm_media_rounded,
                            text: 'Media and Query',
                          ),
                        ],
                      ),
                      Divider(
                        height: 15,
                      ),
                      Divider(),
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Headeropenui(
                            icon: Icons.lock_clock_outlined,
                            text: 'Disappearing Messages',
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Headeropenui(
                            icon: Icons.lock,
                            text: 'Chat Lock',
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Headeropenui(
                            icon: Icons.lock,
                            text: 'Encryption',
                          ),
                        ],
                      ),
                      Divider(
                        height: 16,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
