
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/controller/homepage_controller.dart';
import 'package:wudasemaryam/screen/splash.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
  final homeCOntroller=Get.put(HomepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Obx(() =>
      BottomNavigationBar(
        currentIndex:homeCOntroller.intialpage.value,
          iconSize:30,
          items:const[
        BottomNavigationBarItem(icon: Icon(Icons.menu,),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Setting")
      ],
        onTap: (value) => Get.find<HomepageController>().intialpage.value=value,

      ),
      ),
      body:Container(

      )
    );
  }
}
