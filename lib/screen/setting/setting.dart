

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/utils/constant.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: Get.height,
            width: Get.width,
            decoration:const BoxDecoration(
              image:  DecorationImage(image: AssetImage("assets/images/back.jpeg"),fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: 160,
                    color: Constants().primColor.withOpacity(0.8),
                  child: Center(
                    child: ListTile(
                      leading:Container(
                          decoration:const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child:
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(image: AssetImage("assets/images/splashimage.jpeg"),width: 70,height: 70,fit: BoxFit.fill,))
                      ),
                      title:Text("ዉዳሴ ማርያም",style: TextStyle(color: Constants().backColor,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle:Text("A Hymn of Praise for St.Mary",style: TextStyle(color: Constants().backColor),)
                    ),
                  ),
                ),
                Expanded(child: Container(
                  color: Constants().backColor,
                ))
              ],
            ),
          )

    );
  }
}
