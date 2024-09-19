import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const BottomIcon({
    super.key,
    required this.title,
    required this.isSelected,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      splashColor: Colors.transparent,
      child: Column(
        children: [
          Container(
            decoration: isSelected
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
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
