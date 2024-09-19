import 'package:flutter/material.dart';
import 'package:whatsapp/home/callstab.dart';
import 'package:whatsapp/home/chats_tab.dart';
import 'package:whatsapp/home/communities%20tab.dart';
import 'package:whatsapp/home/components/home_bottom_icons.dart';
import 'package:whatsapp/home/updatestab.dart';

class Home extends StatefulWidget {
  Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Dummy data for chats
  List<Chat> chats = [
    Chat(
        name: "Muhammad Hamza Saleem",
        message: "Future secure kr bhai?jbh!",
        time: "10:30 AM"),
    Chat(
        name: "Zeeshan Khan Baloch",
        message: "You are a great gymmer",
        time: "11:00 AM"),
    Chat(name: "Hassan Khan Balcoh", message: "Ok bhai", time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
    Chat(
        name: "Abdullah Mughall",
        message: 'Kia al hai bhai',
        time: "Yesterday"),
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _buildTab()),
            HomeBottomIcons(
              onTabSelected: (tab) {
                setState(() {
                  selectedTab = tab;
                });
              },
              selectedTab: selectedTab,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab() {
    if (selectedTab == 0) {
      return ChatsTab();
    } else if (selectedTab == 1) {
      return Updatestab();
    } else if (selectedTab == 2) {
      return Communitiestab();
    } else {
      return Calls();
    }
  }
}

class Chat {
  final String name;
  final String message;
  final String time;

  Chat({
    required this.name,
    required this.message,
    required this.time,
  });
}
