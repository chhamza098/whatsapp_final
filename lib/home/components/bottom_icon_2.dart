import 'package:flutter/material.dart';

class BottomIcon2 extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool selected;
  final Function tap;

  const BottomIcon2(
      {super.key,
      required this.name,
      required this.icon,
      required this.selected,
      required this.tap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        tap();
      },
      child: Column(
        children: [
          Container(
            decoration: selected
                ? BoxDecoration(
                    color: Colors.green.withAlpha(70),
                    borderRadius: BorderRadius.circular(25))
                : null,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 3),
            child: Icon(
              icon,
              size: 25,
            ),
          ),
          Text(name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
