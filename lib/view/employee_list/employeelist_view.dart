import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:taskmanagement/controller/employeelist_controller.dart';
import 'package:get/get.dart';
import 'package:taskmanagement/model/employeelist_model.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeeLists controller = Get.put(EmployeeLists());
    return Scaffold(
      appBar: buildAppBar(),
      body: EmployeeListbody(controller: controller,),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/mp.png",
            height: 40,
            width: 200,
            fit: BoxFit.cover,
          ),
          Text('Username'),
          Icon(
            Icons.person_2,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
    );
  }
}

class EmployeeListbody extends StatelessWidget {
  EmployeeLists controller;
  EmployeeListbody({super.key,required this.controller});
  EmployeeLists employeeLists = Get.put(EmployeeLists());


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Project Name:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
           SizedBox(
             height:30 ,
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Obx(() => DropdownButton(
                        hint: Text(
                          'Book Type',
                        ),
                        onChanged: (newValue) {
                          employeeLists.setSelected(newValue!);
                        },
                        value: employeeLists.selected.value,
                        items: employeeLists.listType
                            .map((EmployeeModel selectedType) {
                          return DropdownMenuItem(
                            child: new Text(
                              selectedType.name,
                            ),
                            value: selectedType.id,
                          );
                        }).toList(),
                      )

                ),
                ),
                GestureDetector(
                  onTap: () {
                    // print(employeeLists.listType
                    //     .where((e) => e.id == employeeLists.selected.value).length);
                    EmployeeModel model = employeeLists.listType
                        .where((e) => e.id == employeeLists.selected.value)
                        .first;
                    employeeLists.addEmployee(model);
                  },
                  child:Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
    ),


            Expanded(
                child: Obx(() => ListView.builder(
                        itemCount: controller.employee.value.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(controller.employee.value[index].name),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    controller.employee.value[index].taskcompleted
                                        .toString(),
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('/'),
                                Text(controller.employee.value[index].taskassigned
                                    .toString()),
                              ],
                            ),
                            trailing: GestureDetector(
                              child: Icon(Icons.delete, color: Colors.red),
                              onTap: () {
                                controller.removeEmployee(index);
                              },
                            ),
                          );
                        }
                        ),
            ),

            ),
          ],
        ),
      ),
    );
  }
}
