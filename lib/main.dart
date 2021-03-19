import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_complete/navigationForNamedRoute/navigationForNamedRoute.dart';
import 'package:getx_complete/navigationForNamedRoute/unKnowRoute.dart';
import 'package:getx_complete/navigationForUnNamedRoute/navigationForUnNamedRoute.dart';
import 'package:getx_complete/showDialog/showDialog.dart';
import 'package:getx_complete/snackBar/snackBar.dart';
import 'package:getx_complete/statemanagement/stateManagement.dart';
import 'bottomSheetWithTheme/bottomSheetWithTheme.dart';
import 'navigationForNamedRoute/secondScreen.dart';

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
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/secondScreen', page: () => SecondScreen()),
        // GetPage(
        //   name: '/secondScreen',
        //   page: () => SecondScreen(),
        //   // transition: Transition.leftToRight,
        // ),
        GetPage(
          name: '/secondScreen/:params',
          page: () => SecondScreen(),
          // transition: Transition.leftToRight,
        ),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => UnKnownRoute()),
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
      // body: BottomWithSheetExample(),
      // body: NavigationForUnNamedRoute(),
      // body: NavigationForNamedRoute(),
      body: ReactiveStateManagement(),
    );
  }
}
