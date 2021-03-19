import 'package:get/get.dart';

class Student {
  // First way is to make individual variale of class to make observable.
  // var name = 'Huzaifa'.obs;
  // var age = 23.obs;

  // second way is to make class observable
  var name;
  var age;
  Student({this.name, this.age});
}
