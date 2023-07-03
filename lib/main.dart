import 'view/pmdashboard/pmdashboard.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(pmdashboard());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue
      )
    home: pmdashboard(),
  );
  }
}