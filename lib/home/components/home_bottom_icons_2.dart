import 'package:flutter/material.dart';
import 'package:whatsapp/home/components/bottom_icon_2.dart';

class HomeBottomIcons2 extends StatelessWidget {
  final Function onTabSelected;
  final int selcetedTab;

  const HomeBottomIcons2({
    super.key,
    required this.onTabSelected,
    required this.selcetedTab,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          BottomIcon2(
              name: 'Chats',
              icon: Icons.chat,
              selected: (selcetedTab == 0),
              tap: () {
                onTabSelected(0);
              }),
          BottomIcon2(
              name: 'Updates',
              icon: Icons.update,
              selected: (selcetedTab == 1),
              tap: () {
                onTabSelected(1);
              }),
          BottomIcon2(
              name: 'Communities',
              icon: Icons.commute,
              selected: (selcetedTab == 2),
              tap: () {
                onTabSelected(2);
              }),
          BottomIcon2(
              name: 'Calls',
              icon: Icons.call,
              selected: (selcetedTab == 3),
              tap: () {
                onTabSelected(3);
              }),
        ]));
  }
}
