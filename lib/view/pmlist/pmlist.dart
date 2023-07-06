import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmanagement/view/widgets/bottomnavigationbar.dart';
void main() {
  runApp(PMList());
}

class PMList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomContainer(),
              SizedBox(height:20),
              ProjectManagerForm(),


            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      toolbarHeight: preferredSize.height,
      title: Row(
        children: [
          Image.asset('lib/view/pmlist/images/logo.jpeg', height: 50, width: 50.0),
          SizedBox(width: 8),
          Text(
            "MAVERIX pro",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Spacer(flex: 1),
          LogoutButton(),
        ],
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: IconButton(
        icon: Icon(Icons.logout_rounded, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'PROJECT MANAGER LIST',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        color: Color(0xFF4285F4),
      ),
    );
  }
}

class ProjectManagerForm extends StatelessWidget {
  final MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Text(
          "APPROVE REJECT P.M:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: DropdownButton(
                hint: Text('Select an option'),
                value: myController.selectedValue.value,
                items: myController.listType.map((selectedType) {
                  return DropdownMenuItem(
                    child: Text(selectedType),
                    value: selectedType,
                  );
                }).toList(),
                onChanged: (newValue) {
                  myController.selectedValue.value = newValue!;
                },
              ),
            )),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {
                  // Add the selected value to the dynamic list
                  myController.addItem(myController.selectedValue.value);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Accept',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () {
                  // Add the selected value to the dynamic list
                  myController.removeItem(myController.selectedValue.value);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Reject',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: 1000,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          height: 200, // Adjust the height according to your needs
          child: Obx(() => ListView.builder(
            shrinkWrap: true,
            itemCount: myController.dynamicList.length,
            itemBuilder: (context, index) {
              final item = myController.dynamicList[index];
              return ListTile(
                title: Text(item),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Remove the item from the dynamic list
                    myController.removeItem(item);
                  },
                ),
              );
            },
          )),
        ),
      ],
    );
  }
}

class MyController extends GetxController {
  final selectedValue ="Option 1".obs;
  final listType = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  RxList<String> dynamicList = <String>[].obs;

  void addItem(String item) {
    dynamicList.add(item);
  }

  void removeItem(String item) {
    dynamicList.remove(item);
  }
}

