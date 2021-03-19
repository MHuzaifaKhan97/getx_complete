import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/statemanagement/student.dart';

class ReactiveStateManagement extends StatelessWidget {
  var count = (0).obs;
  void increment() {
    count += 1;
  }

// first way
  // var student = Student();

// second way
  final student = Student(name: 'Huzaifa', age: 23).obs;

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
              'Reactive State Management',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Obx(
            () => Container(
              child: Text(
                'Student Name is ${student.value.name}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              student.update((student) {
                student.name = student.name.toString().toUpperCase();
              });
            },
            child: Text(
              'Upper',
              style: TextStyle(color: Colors.white),
            ),
          )
          //   Obx(
          //   () => Container(
          //     child: Text(
          //       'Count Value is $count',
          //       style: TextStyle(fontSize: 22),
          //     ),
          //   ),
          // ),
          // RaisedButton(
          //   color: Colors.blue,
          //   onPressed: () => increment(),
          //   child: Text(
          //     'Increment',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // )
        ],
      ),
    );
  }
}
