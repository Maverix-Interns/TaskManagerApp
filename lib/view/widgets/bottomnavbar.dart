import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taskmanagement/view/Employee_List/employeelist_view.dart';
import 'package:taskmanagement/view/employee_list/home.dart';

import '../../controller/bottomnav_controller.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  final List<Widget> screens = [
    const HomePage(),
    const EmployeeList(),
  ];

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottom= Get.put(BottomNavigationController());
    return Scaffold(
      body: Obx(
            () =>IndexedStack(
          index: bottom.selectedIndex.value,
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
          bottom.selectedIndex.value= index;
        },
        currentIndex: bottom.selectedIndex.value,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'Employees',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.logout),
            label: 'PM',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      ),
    );
  }
}