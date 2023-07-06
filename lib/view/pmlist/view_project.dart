import 'package:flutter/material.dart';
import 'package:taskmanagement/view/pmlist/pmlist.dart';

void main() {
  runApp(const view());
}

class view extends StatelessWidget {
  const view({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Text('home'),
    );
  }
}