import 'package:get/get.dart';

class Signupcontrol extends GetxController {

  final selected = "User".obs;
  final listType = <String>[
    'User',
    'Admin',
  ];

  void setSelected(String value) {
    selected.value = value;
  }
}
