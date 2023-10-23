// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:project1/screens/FeedBack.dart';
import 'package:project1/screens/enter_details.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/meditation_demo.dart';
import 'package:project1/screens/practice.dart';
import 'package:project1/screens/select_color.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:project1/screens/select_meditation.dart';
import 'package:project1/screens/select_previous.dart';
import 'package:project1/screens/select_theme.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/screens/signin.dart';
import 'package:project1/screens/enter_details.dart';
import 'package:project1/screens/user_profile.dart';

import 'custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/SelectMeditation', page: () => Select_Meditation()),
        GetPage(name: '/SelectTheme', page: () => Select_Theme()),
        GetPage(name: '/SelectColor', page: () => Select_Color()),
        GetPage(name: '/MeditationDemo', page: () => Meditation_Demo()),
        GetPage(name: '/SelectDuration', page: () => Select_Duration()),
        GetPage(name: '/SignIn', page: () => SignIn()),
        GetPage(name: '/EnterDetails', page: () => Enter_Details()),
        GetPage(name: '/FeedBack', page: () => FeedBack()),
        GetPage(name: '/UserProfile', page: () => UserProfile()),
        GetPage(name: '/Select_Previous', page: () => Select_Previous()),
      
      ],
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialBinding: BindingsBuilder(() {
          final DurationController durationController = Get.put(DurationController());
          }),
    );
  }
}
