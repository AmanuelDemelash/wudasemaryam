
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/controller/homepage_controller.dart';
import 'package:wudasemaryam/screen/homepage/widgets/daypraycard.dart';
import 'package:wudasemaryam/utils/constant.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
  final homeCOntroller=Get.put(HomepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/back.jpeg"),fit: BoxFit.fill)
          ),
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 200,
              color: Constants().primColor.withOpacity(0.9),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:30,),
                  Container(
                      decoration:BoxDecoration(
                          borderRadius:const BorderRadius.all(Radius.circular(10)),
                          color: Constants().primColor.withOpacity(0.5),
                          border: Border.all(
                              width: 4,
                              color: Constants().primColor.withOpacity(0.5)
                          )
                      ),
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius:const BorderRadius.all(Radius.circular(10)),
                        color: Constants().backColor.withOpacity(0.6),
                        border: Border.all(
                           width: 4,
                          color: Constants().backColor.withOpacity(0.6)
                        )
      ),
                      child:ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(image: AssetImage("assets/images/splashimage.jpeg"),width: 60,height: 60,fit: BoxFit.cover,))
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text("ዉዳሴ ማርያም",style: TextStyle(color: Constants().backColor,fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("A Hymn of Praise for St.Mary",style: TextStyle(color: Constants().backColor),)
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Constants().backColor.withOpacity(0.9)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ቋንቋ (Language)",style: TextStyle(color: Constants().textColor,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 20,),
                        

                     Obx(() =>
                        DropdownButton(
                            borderRadius:const BorderRadius.all(Radius.circular(10)),
                            elevation: 0,

                             style:TextStyle(color: Constants().primColor,fontWeight: FontWeight.bold) ,
                            dropdownColor: Constants().backColor,
                            padding:const EdgeInsets.all(10),
                            value: homeCOntroller.language.value,
                             focusColor: Constants().primColor,
                            iconEnabledColor: Constants().primColor,
                            items:const[
                            DropdownMenuItem(value: "English",enabled:true, child:Text("English")),
                            DropdownMenuItem(value: "Amharic", child:Text("AMharic")),
                            DropdownMenuItem(value: "Geez", child:Text("Geez")),
                          ],
                          onChanged:(value) {
                              homeCOntroller.language.value=value.toString();
                          },),),

                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: Get.width,
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      padding:const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Constants().primColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("ማንበብ የሚፈልጉትን ክፍል ይምረጡ",style: TextStyle(color:Constants().backColor),)),
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount:homeCOntroller.days.value.length,
                        itemBuilder: (context, index) {
                        return DayPrayCard(index: index,);
                      },),
                    )
                  ],
                ),
              ),
            )
          ],
        ),

      )
    );
  }
}
