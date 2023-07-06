import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taskmanagement/model/employeelist_model.dart';



class EmployeeLists extends GetxController {


  final selected = 1.obs;

  void setSelected(int value){
    selected.value = value;
  }
  final listType =<EmployeeModel>
  [

   EmployeeModel(id: 1, name: 'Arya', taskassigned: 0, taskcompleted: 0),
    EmployeeModel(id: 2, name: 'Krishna', taskassigned: 4, taskcompleted: 2),
    EmployeeModel(id: 3, name: 'Navya', taskassigned: 5, taskcompleted: 3),
    EmployeeModel(id: 4, name: 'Vishnu', taskassigned: 10, taskcompleted: 7),
    EmployeeModel(id: 5, name: 'Sandra', taskassigned: 10, taskcompleted: 9),
    EmployeeModel(id: 6, name: 'San', taskassigned: 5, taskcompleted: 3),


  ];
  }

  class ListofEmply extends GetxController{

  Rx<List<EmployeeModel>> employee =Rx<List<EmployeeModel>>([]);
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController idTextEditingController = TextEditingController();
  TextEditingController taskassignedTextEditingController = TextEditingController();
  TextEditingController taskcompletedTextEditingController = TextEditingController();
  // late EmployeeModel employeeModel;


  var itemcount =0.obs;


  @override
    void onInit()
  {
    super.onInit();
  }

  @override
  void onReady()
  {
    super.onReady();
  }

  @override
  void onClose()
  {
    super.onClose();
    nameTextEditingController.dispose();
    idTextEditingController.dispose();
    taskassignedTextEditingController.dispose();
    taskcompletedTextEditingController.dispose();

  }


  addEmployee(EmployeeModel employeeModel)
  {

   // EmployeeModel employeeModel = EmployeeModel(id: id, name: name, taskassigned: taskassign, taskcompleted: taskcomplt) ;
   employee.value.add(employeeModel);
   itemcount.value = employee.value.length;
   nameTextEditingController.clear();
   idTextEditingController.clear();

  }
  removeEmployee(int index)
  {
    employee.value.removeAt(index);
    itemcount.value = employee.value.length;
  }

  }




