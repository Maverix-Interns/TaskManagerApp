import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:taskmanagement/view/Createproject/widgets/bottomnvbar.dart';
import 'package:taskmanagement/view/register/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: BottomNavBar(),
    );
  }
}
