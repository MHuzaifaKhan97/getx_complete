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
            Text(
              '${Get.arguments}',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'Second Screen',
              style: TextStyle(color: Colors.white),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Get.back(result: "Data is this");
              },
              child: Text('Go Back', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
