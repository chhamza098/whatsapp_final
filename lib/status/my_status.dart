import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      textDirection: TextDirection.rtl,
      children: [
        CircleAvatar(
          child: Icon(
            Icons.mic,
          ),
          radius: 35
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Icon(
            CupertinoIcons.plus_circle_fill,
            color: Colors.green,
            size: 32,
          ),
        ),
        Positioned(
          top: 1,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.pink,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10), bottom: Radius.circular(10)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: Text(
              'Typing...',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
