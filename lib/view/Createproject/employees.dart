import 'package:flutter/material.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builttAppBar(),
      body: EmployeeBody(),
    );
  }

  AppBar builttAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("MaverixPro"),
          Icon(
            Icons.logout,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}

class EmployeeBody extends StatelessWidget {
  const EmployeeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "EMPLOYEE LIST",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );;
  }
}