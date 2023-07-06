import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/control/CreateTask_controller.dart';

class CreateTaskPage extends GetView<CreateTask_controller> {




//this variable should contain the UserName to be diplayed in the"UserName "section.

  var dropdownvalue = 'Employee 1';
  // List of items in our dropdown menu
  var items = [
    'Employee 1',
    'Employee 2',
    'Employee 3',
    'Employee 4',
    'Employee 5'];

  /*DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
    );
    if(picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
      });
    }
  }*/

  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CreateTask_controller controller = Get.put(CreateTask_controller());

    return Scaffold(
        appBar: buildAppBar(context),
        bottomNavigationBar:BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: () {},),
              IconButton(icon: Icon(Icons.person), onPressed: () {},),
              IconButton(icon: Icon(Icons.logout), onPressed: () {},),
            ],

          ),
        ) ,

        body:SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child:Form(
                key:controller.CreateTaskFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Text("Project Name", style: TextStyle(fontSize: 30, color:Colors.black),),
                    Obx(() => Text(controller.project_name.value, style: TextStyle(fontSize: 20, color:Colors.black))),
                    SizedBox(height: 30,),
                    TextFormField(
                        minLines: 1,
                        maxLines: null,
                        decoration: InputDecoration(
                          labelText: "Task Name",border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.TaskNameController,
                        onSaved:(value){
                          controller.TaskName = value!;
                        } ,
                        validator: (value){
                          return controller.ValidateTaskName(value!);
                        },
                    ),

                    SizedBox(height: 30,),
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: "Task description", border: OutlineInputBorder(),
                        ),
                        minLines: 5,
                        maxLines: null,
                        controller: controller.TaskDescriptionController,
                        onSaved:(value){
                          controller.TaskDescription = value!;
                       } ,
                        validator: (value){
                         return controller.ValidateTaskDescription(value!);
                        },
                    ),

                    SizedBox(height: 30,),
                    Obx(
                          () => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
                        child: DropdownButton(
                          onChanged: (newValue) {
                            controller.selected.value = (newValue as String?)!;
                          },
                          value: controller.selected.value,
                          items: controller.listType.map((selectedType) {
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




                    /* DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {setState(() {
                          dropdownvalue = newValue!;
                        });},
                      ),





                    SizedBox(height: 25,),
                    Text("${selectedDate.toLocal()}".split(' ')[0]),
                    const SizedBox(height: 20,),

                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Container(
                        alignment: Alignment(0.0, 0.0),
                        height: 40,
                        width: 150,
                        child: Text('Change Deadline', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

                        decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10)),
                      ),
                    ),*/

                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap:(){
                        controller.CheckCreateTask();
                      },
                      child: Container(
                        alignment: Alignment(0.0, 0.0),
                        height: 50,
                        width: 250,
                        child: Text('CREATE TASK', textAlign: TextAlign.center, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                        decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(3)),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        )


    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Image.asset("assets/MaverixPro-logo.png",height: 40,width: 200,fit: BoxFit.cover,),
        actions: <Widget>[
          Obx(() => Text(controller.user_name.value)),
          IconButton(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],

      );
  }
}

