import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/getxWithControllerType/myController.dart';
import 'package:getx_complete/statemanagement/student.dart';

class GetxWithControllerType extends StatelessWidget {
  // If init property is not used in GetX<Type of Controller> then
  // create the instance of controller as follows

  MyController myController = Get.put(MyController());

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
          // GetX<MyController>(
          //   // init: MyController(),
          //   builder: (controller) {
          //     return Text('The Value Is ${controller.count}');
          //   },
          // ),
          // or
          GetX<MyController>(
            builder: (controller) {
              return Text('The Value Is ${myController.count}');
            },
          ),
          SizedBox(height: 16),
          RaisedButton(
            onPressed: () {
              myController.increment();

              // if instance of controller can not created at top
              // Get.find<MyController>().increment();
            },
            child: Text('Increment'),
          )
        ],
      ),
    );
  }
}
