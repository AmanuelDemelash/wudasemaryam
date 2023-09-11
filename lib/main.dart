import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Constants().primColor),
        scaffoldBackgroundColor: Constants().backColor,
        useMaterial3: true,
        fontFamily: "myfont",
        bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          backgroundColor: Colors.brown,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white30,
        )
      ),
      home: const SPlash()
    );
  }


}
