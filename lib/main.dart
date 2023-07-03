import 'package:flutter/material.dart';
import 'package:taskmanagement/view/admindashboard/admindashboard.dart';
import 'view/admindashboard/admindashboard.dart';

void main() {
  runApp(admindashboard());


class admindashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: admindashboardBody(), // Use the AdminDashboard widget
      ),

    );
  }
}
}