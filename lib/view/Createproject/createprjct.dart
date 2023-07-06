import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/createprjct.dart';

class CreateProject extends StatelessWidget {
  const CreateProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ViewProjectBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text("Project name: Project XYZ"),
    );
  }
}

class ViewProjectBody extends StatelessWidget {
  ViewProjectBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CreateProjectController createProject = Get.put(CreateProjectController());

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
            width: 50.0,
          ),
          const Text(
            "Project Name:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0, right: 30),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'TaskTracker',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
            width: 50.0,
          ),
          const Text(
            "Project Description:",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0, right: 30),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white12,
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 40.0),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
            width: 50.0,
          ),
          Obx(
                () => Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
              child: DropdownButton(
                onChanged: (newValue) {
                  createProject.selected.value = (newValue as String?)!;
                },
                value: createProject.selected.value,
                items: createProject.listType.map((selectedType) {
                  return DropdownMenuItem(
                    value: selectedType,
                    child: Column(
                      children: [
                        Text(selectedType),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          const Text(
            "Deadline:",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0, right: 30),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.snackbar(
                "Success",
                "The project was created successfully",
                backgroundColor: Colors.white,
              );
            },
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'Create',
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
          ),
        ],
      ),
    );
  }
}
