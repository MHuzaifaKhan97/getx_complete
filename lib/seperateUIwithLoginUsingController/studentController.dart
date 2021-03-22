import 'package:get/get.dart';
import 'package:getx_complete/seperateUIwithLoginUsingController/student.dart';

class StudentController extends GetxController {
  // Case 01

  var student = Student();

  void convertToUppercase() {
    student.name.value = student.name.value.toUpperCase();
  }

  // Case 02

  // final student = Student(name: "Huzaifa Khan", age: 23).obs;

  // void convertUppercase() {
  //   student.update((student) {
  //     student.name = student.name.toString().toUpperCase();
  //   });
  // }
}
