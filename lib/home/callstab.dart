import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
          onTap: () {
            showMenu(
                context: context,
                position: RelativeRect.fromDirectional(
                  textDirection: TextDirection.rtl,
                  start: 1,
                  top: 0,
                  end:  0,
                  bottom: 0,
                ),
                items: [
                  PopupMenuItem(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Status Privacy"),
                  )),
                  PopupMenuItem(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Status Privacy"),
                  )),
                  PopupMenuItem(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Status Privacy"),
                  )),
                ]);
          },
          child: Text('Calls')),
    ]);
  }
}
