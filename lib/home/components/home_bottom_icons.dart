import 'package:flutter/material.dart';

import '../bottom_icon.dart';

class HomeBottomIcons extends StatelessWidget {
  final Function(int) onTabSelected;
  final int selectedTab;

  const HomeBottomIcons({
    super.key,
    required this.onTabSelected,
    required this.selectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomIcon(
            title: "Chats",
            icon: Icons.chat,
            isSelected: (selectedTab == 0), //Expression - Boolean Operation
            onTap: () {
              onTabSelected(0);
            },
          ),
          BottomIcon(
            title: "Updates",
            icon: Icons.update,
            isSelected: selectedTab == 1,
            onTap: () {
              onTabSelected(1);
            },
          ),
          BottomIcon(
            title: "Communities",
            icon: Icons.commute,
            isSelected: selectedTab == 2,
            onTap: () {
              onTabSelected(2);
            },
          ),
          BottomIcon(
            title: "Calls",
            icon: Icons.call,
            isSelected: selectedTab == 3,
            onTap: () {
              onTabSelected(3);
            },
          ),
        ],
      ),
    );
  }
}
