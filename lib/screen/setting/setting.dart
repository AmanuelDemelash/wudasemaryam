

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/utils/constant.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(
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
                      color: Constants().primColor.withOpacity(0.7),
                    child: Center(
                      child: ListTile(
                        leading:Container(
                            decoration:const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            ),
                            child:
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(image: AssetImage("assets/images/splashimage.jpeg"),width: 60,height: 60,fit: BoxFit.cover,))
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
                  Expanded(child: Container(
                    color: Constants().backColor,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.settings,color: Constants().textColor,),
                                const SizedBox(width: 10,),
                                const Text('ማስተካከያ',style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("ቀን/ማታ"),
                                const SizedBox(width:4,),
                                Switch.adaptive(
                                  value:true, onChanged:(value) {
                                    //Get.changeTheme(ThemeData.dark());

                                },)
                              ],
                            )
                          ],
                        ),
                        Divider(
                          color: Constants().textColor.withOpacity(0.3),
                          thickness:1,
                        ),
                        const SizedBox(height: 20,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("የፊደላት ትልቀት"),
                            Text("12x")
                      ]
                        ),
                        Slider(
                          value: 20,
                          min: 10,
                          max: 40,
                          activeColor: Constants().primColor,
                          onChanged:(value) {

                        },),

                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("የመስመሮች ክፍተት"),
                              Text("12x")
                            ]
                        ),
                        Slider(
                          value: 20,
                          min: 10,
                          max: 40,

                          activeColor: Constants().primColor,
                          onChanged:(value) {

                          },)


                      ],
                    ),
                  ))
                ],
              ),
            ),
          )

    );
  }
}
