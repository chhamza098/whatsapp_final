import 'package:flutter/material.dart';
import 'package:whatsapp/Practice/Stack/stack.dart';
import 'package:whatsapp/status/my_status.dart';
import 'package:whatsapp/status/status.dart';
import 'package:whatsapp/status/person.dart';

class Updatestab extends StatelessWidget {
  Updatestab({super.key});

  List<Person> status = [
    Person(name: 'Me'),
    Person(name: 'Hamza'),
    Person(name: 'Jawad'),
    Person(name: 'Abdullah'),
    Person(name: 'Saleem'),
    Person(name: 'Hassan'),
    Person(name: 'Hamza'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Updates',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    children: [
                      // SizedBox(width: 30,),
                      Icon(Icons.camera_alt),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 25,
                      ),
                      InkWell(
                          onTap: () {
                            showMenu(
                                context: context,
                                position: RelativeRect.fromDirectional(
                                  textDirection: TextDirection.ltr,
                                  start: 1,
                                  top: 75,
                                  end: 0,
                                  bottom: 0,
                                ),
                                items: [
                                  PopupMenuItem(
                                    child: Text('Status Privacy'),
                                  ),
                                  PopupMenuItem(
                                    child: Text('Create Channels'),
                                  ),
                                  PopupMenuItem(
                                    child: Text('Settings'),
                                  ),
                                ]);
                          },
                          child: Icon(Icons.more_vert)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.15,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 9
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: status.length,
                itemBuilder: (context, index) {
                  if (status[index].name == "Me") {
                    return const MyStatus();
                  } else {
                    return Status(
                      status: status[index],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
