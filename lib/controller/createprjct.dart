import 'package:get/get.dart';

class CreateProjectController extends GetxController {

  final selected = "PROJECTMANAGERNAME1".obs;
  final listType = <String>[
    'PROJECTMANAGERNAME1',
    'PROJECTMANAGERNAME2',
    'PROJECTMANAGERNAME3',
  ];
  void setSelected(String value){
    selected.value = value;
  }

}