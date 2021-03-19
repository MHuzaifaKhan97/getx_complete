import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateManagement extends StatelessWidget {
  var count = (0).obs;
  void increment() {
    count += 1;
  }

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
                'Count Value is $count',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () => increment(),
            child: Text(
              'Show SnackBar',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
