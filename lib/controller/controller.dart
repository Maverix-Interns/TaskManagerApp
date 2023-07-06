import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyController extends GetxController {
  RxList<String> dropdownItems = <String>[].obs;
  RxString selectedValue = ''.obs;

  void loadDropdownItems() {
    // Add your code to fetch dropdown items from a data source
    dropdownItems.value = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  }

  void setSelectedValue(String value) {
    selectedValue.value = value;
  }
}

class ListController extends GetxController {
  RxList<String> dynamicList = <String>[].obs;

  void addItem(String item) {
    dynamicList.add(item);
  }

  void removeItem(String item) {
    dynamicList.remove(item);
  }
}

class PMListController extends GetxController {
  MyController myController = Get.put(MyController());
  ListController listController = Get.put(ListController());

  @override
  void onInit() {
    super.onInit();
    myController.loadDropdownItems();
  }
}
class BottomNavigationController extends GetxController{


  var selectedIndex =0.obs;


  void changeIndex(int index){
    selectedIndex.value=index;
  }
}
