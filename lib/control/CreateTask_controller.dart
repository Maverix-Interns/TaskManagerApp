import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class CreateTask_controller extends GetxController{

  final GlobalKey<FormState>CreateTaskFormKey = GlobalKey<FormState>();
  late TextEditingController TaskNameController, TaskDescriptionController;
  var TaskName = '';
  var TaskDescription = '';
  var project_name = 'XYZ'.obs;
  var user_name = "UserName".obs;
  final selected = "Employee 1".obs;
  final listType = <String>[
    'Employee 1',
    'Employee 2',
    'Employee 3',
    'Employee 4',
    'Employee 5',
    'Employee 6',
  ];
  void setSelected(String value){
    selected.value = value;
  }

  var selectedDate = DateTime.now().obs;


  @override
  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),);

    if(pickedDate!= null && pickedDate!= selectedDate.value){
      selectedDate.value = pickedDate;
    }
  }

  @override
  void onInit(){
    super.onInit();
    TaskNameController = TextEditingController();
    TaskDescriptionController = TextEditingController();
  }

  @override
  void onReady(){
    super.onReady();
  }

  @override
  void onClose(){
    TaskNameController.dispose();
    TaskDescriptionController.dispose();
  }

  String? ValidateTaskName(String value){
    if (value.length < 1){
      return "Please enter the task name";
    }
    return null;
  }

  String? ValidateTaskDescription(String value){
    if (value.length < 1){
      return "Please enter the task description";
    }
    return null;
  }

  void CheckCreateTask(){

    final isValid = CreateTaskFormKey.currentState!.validate();
    if (!isValid){
      return;
    }
    CreateTaskFormKey.currentState!.save();
  }
}