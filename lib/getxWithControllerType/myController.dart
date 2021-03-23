import 'package:get/get.dart';
import 'package:getx_complete/statemanagement/student.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
