import 'package:flutter/material.dart';

class ChatInoutPractice extends StatefulWidget {
  const ChatInoutPractice({super.key});

  @override
  State<ChatInoutPractice> createState() => _chaState();
}

class _chaState extends State<ChatInoutPractice> {
  bool microphone = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 5),
                Image.asset(
                  'assets/emoji.png',
                  color: Colors.black,
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        if (text.isEmpty) {
                          microphone = true;
                        } else {
                          microphone = false;
                        }
                      });
                    },
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    maxLines: 5,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.attach_file_rounded),
                SizedBox(width: 10),
                Icon(Icons.camera_alt),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.lightGreenAccent,
          ),
          child: Row(
            children: [
              microphone
                  ? const Icon(
                      Icons.mic_none_rounded,
                      size: 25,
                    )
                  : const Icon(
                      Icons.send,
                      size: 25,
                    )
            ],
          ),
        )
      ],
    );
  }
}
