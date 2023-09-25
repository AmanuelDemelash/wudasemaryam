
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/setting/controller/settingController.dart';
import '../../utils/constant.dart';

class PrayDetail extends StatelessWidget {
  const PrayDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
        height: Get.height,
        width: Get.width,
        decoration:const BoxDecoration(
        image:  DecorationImage(image: AssetImage("assets/images/back.jpeg"),fit: BoxFit.fill),
    ),
    child: Column(
    children: [
      Container(
        width: Get.width,
        height: 110,
        color: Constants().primColor.withOpacity(0.9),
        child: Center(
          child: ListTile(
            leading:Container(
                decoration:BoxDecoration(
                    borderRadius:const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        width: 4,
                        color: Constants().backColor.withOpacity(0.5)
                    )
                ),
                child:
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(image: AssetImage("assets/images/splashimage.jpeg"),width: 60,height: 60,fit: BoxFit.fill,))
            ),
            title:Text("ዉዳሴ ማርያም",style: TextStyle(color: Constants().backColor,fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle:Text("A Hymn of Praise for St.Mary",style: TextStyle(color: Constants().backColor),),
            trailing:
            Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Constants().backColor,
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.question_mark,color: Constants().primColor,)),

          ),
        ),
      ),
      Expanded(child:
       Container(
         width: Get.width,
         padding: const EdgeInsets.all(20),
         decoration: BoxDecoration(
           color: Constants().backColor,
         ),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text('የዘወትር ጸሎት',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                 Icon(Icons.volume_down,color: Constants().textColor,),
               ],
             ),
             Divider(
               color: Constants().textColor.withOpacity(0.3),
               thickness:1,
             ),
             const SizedBox(height: 15,),
             Expanded(
               child: ListView(
                 physics:const BouncingScrollPhysics(),
                 children:[
                   Obx(() =>
                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: Text(Constants().telot[0],style: TextStyle(
                     fontSize: Get.find<SettingCOntroller>().textsize.value.toDouble(),
                     color: Constants().textColor.withOpacity(0.7)
                   ),),
                 )),
        ]
               ),
             )
           ],
         ),
       )
      )
    ],
    )
        )
    ),
    );
  }
}
