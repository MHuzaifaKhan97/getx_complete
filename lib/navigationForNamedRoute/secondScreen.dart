import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   'Name: ${Get.parameters['name']} \nAge: ${Get.parameters['age']}',
            //   style: TextStyle(color: Colors.red),
            // ),
            Text(
              'Some Params: ${Get.parameters['params']}',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'Second Screen',
              style: TextStyle(color: Colors.white),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Get.back();
              },
              child: Text('Go Back', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
