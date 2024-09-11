import 'package:flutter/material.dart';
import 'package:google_clone/Responsive/mobile_screen_layout.dart';
import 'package:google_clone/Responsive/responsive_layout_screen.dart';
import 'package:google_clone/Responsive/web_screen_layout.dart';
import 'package:google_clone/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayoutScreen(
        mobilescreenlayout: MobileScreenLayout(),
        webscreenlayout: WebScreenLayout(),
      ),
    );
  }
}
