import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/home/user.dart';

import 'chatui.dart';

class ChatsTab extends StatelessWidget {
  ChatsTab({super.key});

  List<User> user = [
    User(name: "Muhammad Hamza", time: '02:13pm'),
    User(name: "Zeeshan Khan Baloch", time: '03:13pm'),
    User(name: "Chaudhary Hassan", time: '04:13pm'),
    User(name: 'Nouman Khan', time: '05:13pm'),
    User(name: "Hussainn  Khan", time: '06:13pm'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 15,
          ),
          Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.green,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 180,
          ),
          Image.asset(
            "assets/camera.png",
            height: 20,
            width: 20,
            color: Colors.black,
          ),
          SizedBox(
            width: 30,
          ),
          Image.asset(
            "assets/dots.png",
            height: 20,
            width: 20,
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(7),
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(80),
            borderRadius: BorderRadius.circular(26),
          ),
          child: Text(
            "Ask Meta AI or Search",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "All",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Unread',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Favourites',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Groups',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
      Expanded(
        child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Chatui(
                chat: user[index],
                onChatClicked: (chat) {
                  GoRouter.of(context)
                      .push('/chatopenscreen', extra: chat.name);
                },
              ),
            );
          },
        ),
      )
    ]);
  }
}
