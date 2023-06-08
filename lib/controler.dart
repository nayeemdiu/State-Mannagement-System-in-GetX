import 'package:get/get.dart';

class Controler extends GetxController{


     RxInt counter = 1.obs;
     increment(){

      counter.value++;
      print(counter.value);
    }
}