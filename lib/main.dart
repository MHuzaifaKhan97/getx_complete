import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/showDialog/showDialog.dart';
import 'package:getx_complete/snackBar/snackBar.dart';
import 'bottomSheetWithTheme/bottomSheetWithTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LearningGetX(),
    );
  }
}

class LearningGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Getx'),
      ),
      // body: SnackBarExample(),
      // body: ShowDialogExample(),
      body: BottomWithSheetExample(),
    );
  }
}
