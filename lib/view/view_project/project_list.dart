import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmanagement/view/view_project/view_project.dart';
import 'package:taskmanagement/controller/nav_controller.dart';
import 'package:taskmanagement/view/widgets/bottomnav.dart';
import 'package:taskmanagement/view/view_project/ProjectDetailsPage.dart';

class Project {
  final String projectName;
  final String managerName;
  final String deadline;

  Project({required this.projectName, required this.managerName, required this.deadline});
}

class ProjectController extends GetxController {
  final projects = <Project>[].obs;

  @override
  void onInit() {
    fetchProjects();
    super.onInit();
  }

  void fetchProjects() {
    // Simulating API call to fetch projects
    // Replace this with your actual API call to fetch project data
    List<Map<String, String>> projectData = [
      {
        'projectName': 'Project A',
        'managerName': 'John Doe',
        'deadline': '2023-08-15',
      },
      {
        'projectName': 'Project B',
        'managerName': 'Jane Smith',
        'deadline': '2023-09-30',
      
      },
    ];

    final projectsList = projectData
        .map((data) => Project(
              projectName: data['projectName']!,
              managerName: data['managerName']!,
              deadline: data['deadline']!,
            ))
        .toList();

    projects.assignAll(projectsList);
  }
}

class ProjectListPage extends StatelessWidget {
  final ProjectController projectController = Get.put(ProjectController());
  final BottomNavigationController _bottomNavigationController =
      Get.find<BottomNavigationController>();

  void _onIndexChanged(int newIndex) {
    _bottomNavigationController.changeIndex(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                _onIndexChanged(1);
              },
              child: Text('Create'),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Obx(
                () => ListView.builder(
                  itemCount: projectController.projects.length,
                  itemBuilder: (BuildContext context, int index) {
                    Project project = projectController.projects[index];

                    return GestureDetector(
                      onTap: () {
                        Get.to(ProjectDetailsPage(project: project));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Project Name: ${project.projectName}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Manager: ${project.managerName}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              'Deadline: ${project.deadline}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  Get.put<BottomNavigationController>(BottomNavigationController());
  runApp(GetMaterialApp(
    home: ProjectListPage(),
  ));
}

