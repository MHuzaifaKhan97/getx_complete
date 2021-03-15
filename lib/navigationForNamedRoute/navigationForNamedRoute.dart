import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/navigationForUnNamedRoute/SecondScreen.dart';

class NavigationForNamedRoute extends StatelessWidget {
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
              'Navigation For Named Routes',
              style: TextStyle(fontSize: 22),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              // Get.toNamed('/secondScreen');
              // Get.offNamed('/secondScreen');
              // Get.offAllNamed('/secondScreen');
              // Get.toNamed('/secondScreen?name=Huzaifa Khan&age=23');
              // Get.toNamed('/secondScreen/1234');

              // Check 404
              Get.toNamed('/sdsd');
            },
            child: Text(
              'Goto Second Screen',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
