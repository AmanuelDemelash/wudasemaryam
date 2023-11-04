

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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
      Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/back.jpeg"),fit: BoxFit.fill)
        ),
        child: PageView(
          controller:pagecontroller,
          physics:const NeverScrollableScrollPhysics(),
          children: [
            Homepage(),
            Setting()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() =>
      Container(
        margin:const EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child:
          AnimatedBottomNavigationBar(
            icons:const [Icons.home,Icons.settings],
            activeColor: Constants().backColor,
            inactiveColor: Constants().backColor.withOpacity(0.3),
            activeIndex:homeCOntroller.intialpage.value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.smoothEdge,
            backgroundColor: Constants().primColor,
            iconSize: 30,
            onTap: (index){
              homeCOntroller.intialpage.value=index;
              pagecontroller.jumpToPage(index);
            }
            //other params
          ),
        ),
      ),)
      // bottomNavigationBar: Obx(() =>
      // NavigationBar(
      //   selectedIndex: homeCOntroller.intialpage.value,
      //   backgroundColor: Constants().primColor,
      //   indicatorColor: Constants().backColor,
      //   elevation: 0,
      //   animationDuration: const Duration( milliseconds: 100),
      //   labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      //   shadowColor: Constants().backColor,
      //   destinations:const[
      //   NavigationDestination(icon: Icon(Icons.home), label: "Home",),
      //   NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
      // ],
      //    onDestinationSelected: (value) {
      //   homeCOntroller.intialpage.value=value;
      //   pagecontroller.jumpToPage(value);
      //    },
      // ),
      // )
    );
  }
}
