import 'package:flutter/material.dart';
import 'package:taskmanagement/controller/viewcontroller.dart';
import 'package:taskmanagement/view/view_project/employeelist.dart';
import 'package:taskmanagement/view/view_project/home.dart';
import 'package:taskmanagement/view/view_project/pmlist.dart';
import 'package:taskmanagement/view/widgets/bottomnav.dart';
import 'package:get/get.dart';

class ViewProject extends StatelessWidget {
  const ViewProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:
      const SingleChildScrollView(child: ViewProjectBody()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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


class ViewProjectBody extends StatelessWidget {
  const ViewProjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    ViewController form=Get.put(ViewController());
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
            width: 50.0,
          ),
            const Text("Project Name:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20, // Adjust the size as needed
              ),
            ),

           Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
          child: TextField(
            controller: form.projectname,
            decoration: InputDecoration(
              fillColor: Colors.white12, // Set your desired color here
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              labelText: 'TaskTracker',
            ),
          ),
          ),

          const SizedBox(
            height: 30,
            width: 50.0,
          ),
            const Text("Project Description:",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20, // Adjust the size as needed
              ),
            ),
           Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: TextField(
              controller: form.projdescription,
              decoration: InputDecoration(
                fillColor: Colors.white12, // Set your desired color here
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: 'TaskTracker" is a project management tool that helps individuals and teams organize, '
                    'track, and collaborate on tasks and projects. ',
              ),
            ),
          ),


          const SizedBox(
            height: 30,
            width: 50.0,
          ),
            const Text("Project Manager:",
                textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20, // Adjust the size as needed
              ),
                ),
           Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: TextFormField(
              controller: form.projectmanager,
              decoration: InputDecoration(
                fillColor: Colors.white12, // Set your desired color here
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: 'Sam Krishnan',
              ),
            ),
          ),



            const Text("Deadline:",
                textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20, // Adjust the size as needed
              ),
                ),
           Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextField(
              controller: form.deadline,
              decoration: InputDecoration(
                fillColor: Colors.white12, // Set your desired color here
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: '00/00/0000',
              ),
            ),
          ),



          Row(
            children: [
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: (){
                  Get.snackbar("Success", "The project is edited successfully ",
                    backgroundColor: Colors.green,
                  );
                },
                child: Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Submit',
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
          ],
      ),
    );
  }
}
class ProjectName extends StatelessWidget {
  const ProjectName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}










