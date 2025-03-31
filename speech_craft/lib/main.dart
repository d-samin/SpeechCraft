import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(SpeechCraftApp());
}

class SpeechCraftApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: WelcomeScreen(),
    );
  }
}


