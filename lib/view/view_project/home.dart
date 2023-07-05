import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: builtappBar(),
      body: HomeBody(),
    );
  }

  AppBar builtappBar() {
    return  AppBar(
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

  class HomeBody extends StatelessWidget {
    const HomeBody({super.key});

    @override
    Widget build(BuildContext context) {
      return const Center(
        child: Text(
          "HOMEPAGE",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
        ),
        ),
      );
    }
  }


