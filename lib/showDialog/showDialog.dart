import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogExample extends StatelessWidget {
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
              'Learning Dialog using GetX',
              style: TextStyle(fontSize: 22),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              // Get.defaultDialog();
              Get.defaultDialog(
                title: 'GetX Dialog',
                titleStyle: TextStyle(color: Colors.white),
                middleText: 'Middle Text of Getx Dialog',
                middleTextStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.purple,
                radius: 10,
                content: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                        'Customized Middle Text using content',
                        maxLines: 2,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                textCancel: 'Cancel',
                cancelTextColor: Colors.white,
                onCancel: () {
                  Get.back();
                },
                textConfirm: 'Ok',
                confirmTextColor: Colors.white,
                onConfirm: () {},
                buttonColor: Colors.green,
                // cancel: Text(
                //   'Cancel',
                //   style: TextStyle(
                //       color: Colors.white, fontWeight: FontWeight.bold),
                // ),
                // confirm: Text(
                //   'Confirm',
                //   style: TextStyle(
                //       color: Colors.white, fontWeight: FontWeight.bold),
                // ),
                // actions: [
                //   RaisedButton(
                //       onPressed: () {
                //         Get.back();
                //       },
                //       child: Text('Action 1')),
                //   RaisedButton(onPressed: () {}, child: Text('Action 2'))
                // ],
                barrierDismissible: false,
              );
            },
            child: Text(
              'Show Dialog',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
