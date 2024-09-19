import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/chat_screen/chat_list_item.dart';
import 'package:whatsapp/home/components/chat_inout_practice.dart';
import 'messages.dart';

class ChatOpenScreen extends StatelessWidget {
  List<Message> messages = [
    Message(
        name: 'Muhammad Hamza Saleem',
        text: 'Hello how are you',
        time: '12:10'),
    // More messages can be added here
  ];

  ChatOpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra! as String;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.withAlpha(50),
          child: Column(
            children: [
              // Top Row with Profile Information and Call Icons
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // Space evenly
                        children: [
                          Row(
                            // Align profile elements together
                            children: [
                              CircleAvatar(
                                child: Image.asset('assets/communities.png'),
                              ),
                              SizedBox(width: 12),
                              Text(
                                extra,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/videocall.png',
                                height: 25,
                                width: 25,
                                color: Colors.black,
                              ),
                              SizedBox(width: 15),
                              Icon(Icons.call, size: 20),
                              SizedBox(width: 5),
                              Image.asset('assets/dots.png',
                                  height: 20, width: 26),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 0,
                    )
                  ],
                ),
              ),

              // Bottom Row with Message Input and Media Icons
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: ChatListItem(
                        message: messages[index],
                      ),
                    );
                  },
                ),
              ),

              ChatInoutPractice(),
            ],
          ),
        ),
      ),
    );
  }
}