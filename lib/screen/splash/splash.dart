
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/homepage.dart';
import 'package:wudasemaryam/utils/constant.dart';

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
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const SizedBox(height: 100,),
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
          //
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
             // clipper: CustomClipperShape(),
              child: Container(
                height: Get.height/2,
                  width: Get.width,
                  decoration:BoxDecoration(
                    color:Constants().primColor,
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("“  ወደ ፈተና እንዳትገቡ\n ተግታችሁ ጸልዩ  “",style: TextStyle(color: Constants().backColor,fontSize: 25),),
                  Text("ማቴ.26:41",style: TextStyle(color: Constants().backColor),)
                ],
                ),
                ),
            ),
          ),
          //

        ],
      ),
    );

  }
}

class CustomClipperShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Define the shape of the container using a Path
    var path = Path();
    path.lineTo(0, size.height); // Start at the bottom-left corner
    path.quadraticBezierTo(size.height,0,0,size.height); // Curve to the bottom-right corner
    path.lineTo(size.width, 0); // Line to the top-right corner
    path.close(); // Close the path to form a bounded shape

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; // Update the clip path whenever the widget is rebuilt
  }
}