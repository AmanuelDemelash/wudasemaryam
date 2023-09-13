
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/controller/homepage_controller.dart';
import 'package:wudasemaryam/screen/splash/splash.dart';
import 'package:wudasemaryam/utils/constant.dart';

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
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
                    child:
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(image: AssetImage("assets/images/splashimage.jpeg"),width: 70,height: 70,fit: BoxFit.fill,))
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
                    const SizedBox(height: 15,),
                    Expanded(
                      child: ListView.builder(
                        itemCount:10,
                        itemBuilder: (context, index) {
                        return
                          Container(
                          width: Get.width,
                          margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                          decoration: BoxDecoration(
                            color: Constants().backColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:const ListTile(
                            title: Text("የዘወትር ጸሎት"),
                            trailing: Icon(Icons.arrow_right),
                          )
                        );
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
