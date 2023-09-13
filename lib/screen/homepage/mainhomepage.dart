

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/homepage.dart';
import 'package:wudasemaryam/screen/setting/setting.dart';
import 'package:wudasemaryam/utils/constant.dart';

import 'controller/homepage_controller.dart';

class MainHomePage extends StatelessWidget {
   MainHomePage({super.key});

  var pagecontroller=PageController(initialPage: 0);
   final homeCOntroller=Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      PageView(
        controller:pagecontroller,
        physics:const NeverScrollableScrollPhysics(),
        children: [
          Homepage(),
          Setting()
        ],
      ),
      bottomNavigationBar: Obx(() =>
      NavigationBar(
        selectedIndex: homeCOntroller.intialpage.value,
        backgroundColor: Constants().primColor,
        indicatorColor: Constants().backColor,
        elevation: 0,
        animationDuration: const Duration( milliseconds: 100),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        shadowColor: Constants().backColor,

        destinations:const[
        NavigationDestination(icon: Icon(Icons.home), label: "Home",),
        NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
      ],
         onDestinationSelected: (value) {
        homeCOntroller.intialpage.value=value;
        pagecontroller.jumpToPage(value);
         },
      ),
      )
    );
  }
}
