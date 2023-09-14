import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wudasemaryam/screen/homepage/homepage.dart';
import 'package:wudasemaryam/screen/homepage/mainhomepage.dart';
import 'package:wudasemaryam/screen/praydetail/praydetail.dart';
import 'package:wudasemaryam/screen/setting/setting.dart';
import 'package:wudasemaryam/screen/splash/splash.dart';
import 'package:wudasemaryam/utils/constant.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRight,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Constants().primColor),
        scaffoldBackgroundColor: Constants().backColor,
        useMaterial3: true,
        fontFamily: "myfont",
        // bottomNavigationBarTheme:BottomNavigationBarThemeData(
        //   backgroundColor: Constants().primColor,
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.white30,
        // )
      ),
      initialRoute:"/splash",
        getPages: [
          GetPage(name: "/splash", page:() => SPlash(),),
          GetPage(name: "/home", page: () => Homepage(),),
          GetPage(name: "/mainhome", page:() => MainHomePage(),),
          GetPage(name: "/setting", page: () => Setting(),),
          GetPage(name: "/praydetail", page: () => PrayDetail(),)
      ],
    );
  }


}
