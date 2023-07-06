import 'package:flutter/material.dart';
import 'view/Login/splash_screen.dart';

void main() {
  runApp(Task());
}

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
