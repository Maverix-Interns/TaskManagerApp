import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmanagement/view/Createproject/employees.dart';
import 'package:taskmanagement/view/Createproject/pmlist.dart';
import 'package:taskmanagement/view/Createproject/view_prjct.dart';
import '../../../controller/navcontroller.dart';
import '../createprjct.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({Key? key}) : super(key: key);

  final List<Widget> screens = [
    const CreateProject(),
    const ViewProject(),
    const EmployeeList(),
    const PmList(),
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController b = Get.put(BottomNavigationController());

    return Scaffold(
      body: Obx(
            () => IndexedStack(
          index: b.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            b.selectedIndex.value = index;
          },
          currentIndex: b.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: 'Projects',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Employees',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              label: 'PM',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
