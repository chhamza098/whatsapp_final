import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
            Icon(Icons.arrow_back),
                Icon(Icons.more_vert),

              ],
            ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Digital MARKET PRODUCTS',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Community · 4 groups',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
            
            ]),
          ),
        ],
      ),
    ));
  }
}
