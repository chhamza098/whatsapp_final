import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/Community/view_all.dart';
import 'package:whatsapp/home/chatopenscreen.dart';
import 'package:whatsapp/home/communities%20tab.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/chatopenscreen',
      builder: (context, state) => ChatOpenScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: '/stack',
      builder: (context, state) => Stack(),
    ),
    GoRoute(
      path: '/viewall',
      builder: (context, state) =>ViewAll(),
    ),
  ],
  initialLocation: "/dashboard",
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
