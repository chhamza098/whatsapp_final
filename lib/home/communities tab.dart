import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/Community/group.dart';
import 'package:whatsapp/Community/group_class.dart';
import 'package:whatsapp/Community/view_all.dart';

class Communitiestab extends StatelessWidget {
  List<GroupClass
  > group = [
    GroupClass(gname: 'Pakistan', time: '21/02/23'),
    GroupClass(gname: 'abc', time: '21/02/23'),

  ];

  Communitiestab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Communities',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Icon(Icons.camera_alt),
                  ),
                  Icon(Icons.more_vert),
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10), bottom: Radius.circular(10)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Icon(
                    Icons.commute,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                    left: 40,
                    right: 0,
                    bottom: 0,
                    top: 38,
                    child: Icon(
                      CupertinoIcons.plus_circle_fill,
                      color: Colors.green,
                    )),
              ]),
            ),
            Text(
              'New Community',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black12,
        ),
        Divider(
          color: Colors.black12,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10), bottom: Radius.circular(10)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Icon(
                  Icons.commute,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Digital Market Products',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10), bottom: Radius.circular(10)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Icon(
                  Icons.phone_bluetooth_speaker_sharp,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text(
                        'Announcements',
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
              Text('01/02/24'),
            ],
          ),
        ),
    Expanded(
      child: ListView.builder(
      itemCount: group.length,
      itemBuilder: (context, index) {


        if(group[index].gname=='Pakistan'){
          return Group(group:
            group[index],);
        }else{return ViewAll();};}),
    ),
        Divider(
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '>',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  GoRouter.of(context).push('/viewall');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'View all',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ]),
    ));
  }
}
