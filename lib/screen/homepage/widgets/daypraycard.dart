
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/controller/homepage_controller.dart';

import '../../../utils/constant.dart';

class DayPrayCard extends StatelessWidget {
  int index;
   DayPrayCard({super.key,required this.index});
   final homepageconteroller=Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return  
      GestureDetector(
        onTap: () => Get.toNamed("/praydetail"),
        child: Container(
          width: Get.width,
          margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Constants().backColor,
              border: Border.all(
                  color: Constants().textColor.withOpacity(0.3),
                  width:1,
                  style: BorderStyle.solid
              )
          ),
          child:ListTile(
            title: Text(homepageconteroller.days.value[index].toString(),textAlign: TextAlign.center,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            trailing:const Icon(Icons.arrow_right),
          )
    ),
      );
  }
}
