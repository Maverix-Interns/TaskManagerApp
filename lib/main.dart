import 'package:flutter/material.dart';
import 'package:taskmanagement/view/admindashboard/admindashboard.dart';

import 'view/admindashboard/admindashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: admindashboard(),
    );
  }
}

class admindashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: admindashboardBody(),
    );
  }
}
