import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/navigationForUnNamedRoute/SecondScreen.dart';

class NavigationForUnNamedRoute extends StatelessWidget {
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
              'Navigation For Unnamed Routes',
              style: TextStyle(fontSize: 22),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () async {
              // Get.to(
              //   SecondScreen(),
              //   // transition: Transition.cupertino,
              //   transition: Transition.zoom,
              //   duration: Duration(milliseconds: 1000),
              //   // fullscreenDialog: true,
              //   curve: Curves.easeInOutCirc,
              //   arguments: "Some Data Sent from Previous Screen",
              // );
              // No way to go back
              // Get.off(SecondScreen());
              // No way to go back and removed all previous routes history too.
              // Get.offAll(SecondScreen());

              var data = await Get.to(SecondScreen());
              print("The Received Data is: ${data}");
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
