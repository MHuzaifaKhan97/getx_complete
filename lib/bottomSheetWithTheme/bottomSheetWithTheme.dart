import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomWithSheetExample extends StatelessWidget {
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
              'Bottom Sheet using GetX',
              style: TextStyle(fontSize: 22),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Wrap(
                    children: [
                      ListTile(
                          leading: Icon(Icons.wb_sunny_outlined,
                              color: Colors.white),
                          title: Text('Light Theme',
                              style: TextStyle(color: Colors.white)),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          }),
                      ListTile(
                        leading: Icon(Icons.wb_sunny, color: Colors.white),
                        title: Text('Dark Theme',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ),
                barrierColor: Colors.yellow.withOpacity(0.4),
                backgroundColor: Colors.purple,
                // isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.orange,
                      style: BorderStyle.solid,
                      width: 2,
                    )),
                enableDrag: false,
                elevation: 10,
              );
            },
            child: Text(
              'Show Bottom Sheet',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
