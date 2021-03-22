import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/seperateUIwithLoginUsingController/studentController.dart';

// ignore: must_be_immutable
class SeperateUIAndLogic extends StatelessWidget {
  StudentController myStudentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Seperate UI & Logic',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Obx(
            () => Text(
              // '',
              'Student Name is ${myStudentController.student.name.value}',
              style: TextStyle(fontSize: 22),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () => myStudentController.convertToUppercase(),
            child: Text(
              'Upper',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
