import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/getxLifeCycleMethod/myController.dart';

// ignore: must_be_immutable
class GetxLifeCycle extends StatelessWidget {
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
              'Simple State Management',
              style: TextStyle(fontSize: 22),
            ),
          ),
          GetBuilder<MyController>(
            // initState: (data) => myController.increment(),
            // dispose: (_) => myController.cleanUp(),
            builder: (controller) {
              return Text('The Value Is ${myController.count}');
            },
          ),
        ],
      ),
    );
  }
}
