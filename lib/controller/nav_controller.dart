import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomNavigationController extends GetxController{


  var selectedIndex =0.obs;


  void changeIndex(int index){
    selectedIndex.value=index;
  }
}
