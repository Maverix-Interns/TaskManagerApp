import 'package:flutter/material.dart';

class admindashboard extends StatelessWidget {
  const admindashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: admindashboardBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("MaverixPro"),
          Icon(
            Icons.logout,
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
    );
  }
}


class admindashboardBody extends StatelessWidget {
  const admindashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
          Text("Project Name:",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Project Name',
          ),
        ),
        ),

          Text("Project Description:",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Project Description',
            ),
          ),
        ),
          Text("Project Manager:",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
              ),
          SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Project Manager',
            ),
          ),
        ),
          Text("Deadline:",
              textAlign: TextAlign.left,
               style: TextStyle(fontSize: 20),
              ),
          SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '00/00/0000',
            ),
          ),
        ),
        ],
    );
  }
}
class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}