import 'package:flutter/material.dart';
import 'package:responsivedashboard/responsive/LoginScreen.dart';
import 'package:responsivedashboard/responsive/desktop_body.dart';
import 'package:responsivedashboard/responsive/SettingScreen.dart';
import 'package:responsivedashboard/responsive/pallete.dart';
import 'package:responsivedashboard/responsive/tablet_body.dart';
import 'responsive/mobile_body.dart';
import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Design',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
        
      ),
      home: const LoginScreen(),
    );
  }
}
