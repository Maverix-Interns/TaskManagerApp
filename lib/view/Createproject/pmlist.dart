import 'package:flutter/material.dart';

class PmList extends StatelessWidget {
  const PmList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildtAppBar(),
      body: PmListBody(),
    );
  }

  AppBar buildtAppBar() {
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

class PmListBody extends StatelessWidget {
  const PmListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "PM LIST",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );;
  }
}