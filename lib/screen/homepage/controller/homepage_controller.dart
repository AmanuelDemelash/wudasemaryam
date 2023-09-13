

import 'dart:ffi';

import 'package:get/get.dart';

class HomepageController extends GetxController{
   RxInt intialpage=0.obs;
   RxString language="English".obs;
   Rx<List<String>> days=Rx<List<String>>(["የዘወትር ጸሎት","ሰኞ የሚጸለይ","ማክሰኞ የሚጸለይ","ረቡዕ የሚጸለይ","ሐሙስ የሚጸለይ","ዓርብ የሚጸለይ","ቅዳሜ የሚጸለይ","እሑድ የሚጸለይ"]);
    changePage(int pos){
      intialpage.value=pos;
      update();
    }
}