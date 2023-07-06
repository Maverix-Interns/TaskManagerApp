import 'package:flutter/material.dart';
import 'package:taskmanagement/view/pmlist/employee_list.dart';
import 'package:taskmanagement/view/pmlist/home.dart';
import 'package:taskmanagement/view/pmlist/pmlist.dart';
import 'package:taskmanagement/view/pmlist/view_project.dart';
import 'package:get/get.dart';
import 'package:taskmanagement/controller/controller.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  final List<Widget> screens = [
    const home(),
    const view(),
    const employee(),
     PMList(),
  ];

  @override
  Widget build(BuildContext context) {
    BottomNavigationController b= Get.put(BottomNavigationController());
    return Scaffold(
      body: Obx(
            () =>IndexedStack(
          index: b.selectedIndex.value,
          children: screens ,
        ),
      ),
      // body: SizedBox(),
      bottomNavigationBar:Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index) {
          // Handle navigation here
          b.selectedIndex.value= index;
        },
        currentIndex: b.selectedIndex.value,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined),
            label: 'Projects',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'Employees',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp),
            label: 'PM',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      ),
    );
  }
}