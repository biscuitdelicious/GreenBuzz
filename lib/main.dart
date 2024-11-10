import 'package:flutter/material.dart';
import 'package:greenbuzz/home.dart';
import 'package:greenbuzz/login.dart';
import 'package:greenbuzz/map.dart';

import 'package:greenbuzz/profile2.dart';
// import 'package:greenbuzz/profile2.dart';
// import 'package:greenbuzz/progressbar.dart';
import 'package:greenbuzz/welcome.dart';
// import 'package:greenbuzz/profile.dart';
import 'package:greenbuzz/signup.dart';


void main() => runApp(const GreenBuzzApp());

class GreenBuzzApp extends StatelessWidget {
  const GreenBuzzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreenBuzz',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => InstagramHomePageApp(),
        '/profile': (context) => GreenGuardingApp(),
        '/map': (context) => EcoMapPage(),
      },
    );
  }
}
