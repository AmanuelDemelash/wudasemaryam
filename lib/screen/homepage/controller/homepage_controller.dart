

import 'dart:ffi';

import 'package:get/get.dart';

class HomepageController extends GetxController{
   RxInt intialpage=0.obs;
    changePage(int pos){
      intialpage.value=pos;
      update();
    }
}