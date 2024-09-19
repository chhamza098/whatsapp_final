import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Outer Container for the Profile Picture
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.lightGreenAccent


          ),
          padding: EdgeInsets.all(50),
          child: Icon(Icons.kitchen_sharp),
        ),
        // A Positioned Icon
        Positioned(
          bottom: 50,
          right:50,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.camera_alt,
              size: 24,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}