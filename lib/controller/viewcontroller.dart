import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ViewController extends GetxController{
  TextEditingController projectname=TextEditingController();
  TextEditingController projdescription=TextEditingController();
  TextEditingController projectmanager=TextEditingController();
  TextEditingController deadline=TextEditingController();



  setInitVal(String name){
    projectname.text =name;
    projdescription.text=name;
    projectmanager.text=name;

  }
}