import 'package:flutter/material.dart';
import 'package:taskmanagement/view/view_project/home.dart';
import 'package:taskmanagement/view/view_project/project_list.dart';
class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  ProjectDetailsPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project Name: ${project.projectName}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Manager: ${project.managerName}',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Deadline: ${project.deadline}',
              style: TextStyle(fontSize: 16.0),
            ),
            // Additional project details...
          ],
        ),
      ),
    );
  }
}

