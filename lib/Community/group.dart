import 'package:flutter/material.dart';
import 'package:whatsapp/Community/group_class.dart';

class Group extends StatelessWidget {
 GroupClass group;
 Group({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            child: Icon(Icons.mic),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    group.gname,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '~X_treme Tech: of high quality',
                ),
              ],
            ),
          ),
          Text(group.time),
        ],
      ),
    );
  }
}
