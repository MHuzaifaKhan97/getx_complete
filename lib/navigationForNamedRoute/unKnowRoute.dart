import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnKnownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('404 Screen')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '404 Not Found',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
