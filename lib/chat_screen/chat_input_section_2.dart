import 'package:flutter/material.dart';

class ChatInputSection2 extends StatefulWidget {
  const ChatInputSection2({super.key});

  @override
  State<ChatInputSection2> createState() => _ChatInputSection2State();
}

class _ChatInputSection2State extends State<ChatInputSection2> {
  bool ismicrophone= true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
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
                      onChanged: (text){
                        setState(() {
                          if (text.isEmpty){
                            ismicrophone=true;
                          }else{
                            ismicrophone=false;
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
                ismicrophone?
                const Icon(
                  Icons.mic_none_rounded,
                  size: 25,
                ): const Icon(
                  Icons.send,
                  size: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
