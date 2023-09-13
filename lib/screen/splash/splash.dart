
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/utils/constant.dart';

import '../homepage/homepage.dart';

class SPlash extends StatefulWidget {
  const SPlash({super.key});

  @override
  State<SPlash> createState() => _SPlashState();
}

class _SPlashState extends State<SPlash> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: const Image(image: AssetImage("assets/images/back.jpeg"),fit: BoxFit.fill,),
          ),
          Container(
            decoration: BoxDecoration(
                color:Colors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(height: 160,),
                Text("ዉዳሴ ማርያም",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold, color: Constants().primColor),),
                Text("A Hymn of Praise for St.Mary",style: TextStyle(color: Constants().textColor),),
                const SizedBox(height: 30,),
                 //image
                 Container(
                   width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image(image:AssetImage("assets/images/splashimage.jpeg"),fit: BoxFit.fill,)),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:  SizedBox(
              width: Get.width,
              child: const Image(image: AssetImage("assets/images/Vector 1.png")),
            ),
          ),
          //
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:SizedBox(
              height: 300,
                  width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text("“  ወደ ፈተና እንዳትገቡ\n ተግታችሁ ጸልዩ  “",style: TextStyle(color: Constants().backColor,fontSize: 25),),
                  Text("ማቴ.26:41",style: TextStyle(color: Constants().backColor),)
                ],
                ),
                ),

          ),
          //

        ],
      ),
    );

  }
}