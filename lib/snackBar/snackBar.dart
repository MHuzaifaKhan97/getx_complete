import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarExample extends StatelessWidget {
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
              'Learning Snack Bar using GetX',
              style: TextStyle(fontSize: 22),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Get.snackbar(
                'GetX Snackbar', 'Demo Message from getX Snackbar',
                snackPosition: SnackPosition.BOTTOM,
                // titleText: Text(
                //   'Another Title',
                //   style: TextStyle(color: Colors.red, fontSize: 22),
                // ),
                // messageText: Text(
                //   'Another Text from getX Snackbar',
                //   style: TextStyle(color: Colors.yellow, fontSize: 22),
                // ),
                colorText: Colors.yellow,
                backgroundColor: Colors.orange,
                borderRadius: 100,
                maxWidth: 240,
                // animationDuration: Duration(milliseconds: 3000),
                backgroundGradient:
                    LinearGradient(colors: [Colors.purple, Colors.orange]),
                borderColor: Colors.pink,
                borderWidth: 10,
                boxShadows: [
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(1, 2),
                    spreadRadius: 2,
                    blurRadius: 3,
                  )
                ],
                // isDismissible: true,
                // dismissDirection: SnackDismissDirection.HORIZONTAL,
                // forwardAnimationCurve: Curves.bounceIn,
                // duration: Duration(microseconds: 5000).
                icon: Icon(Icons.send),
                leftBarIndicatorColor: Colors.blue,
                mainButton: TextButton(
                  onPressed: () {},
                  child: Text('Retry', style: TextStyle(color: Colors.white)),
                ),
                onTap: (val) {
                  print('Snackbar Clicked');
                  print(val);
                },
                overlayBlur: 5,
                overlayColor: Colors.grey.withOpacity(.3),
                padding: EdgeInsets.all(30),
                showProgressIndicator: true,
                progressIndicatorBackgroundColor: Colors.orange,
                progressIndicatorValueColor:
                    AlwaysStoppedAnimation<Color>(Colors.white),
                reverseAnimationCurve: Curves.easeInBack,
                snackbarStatus: (val) {
                  print('Status');
                  print(val);
                },
                // userInputForm: Form(
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: TextField(),
                //       )
                //     ],
                //   ),
                // ),
              );
            },
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
