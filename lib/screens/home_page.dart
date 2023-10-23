// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

import 'package:project1/screens/select_meditation.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 0,
            child: Container(
              width: double.infinity,
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.2,
                  child: Image.asset(
                    "assets/Ellipse.png",
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Focadot',
                    style: TextStyle(
                      fontSize: context.screenWidth * 0.1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 55,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.04,
                      ),
                    ],
                  )
                ]),
              ]),
            )),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                Text(
                  'Welcome!',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: 4),
                ),
                SizedBox(
                  height: context.screenHeight * 0.05,
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image(
                        image: AssetImage("assets/Focadot_red.png"),
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Image(
                      image: AssetImage(
                        "assets/main_image.png",
                      ),
                      height: 150,
                      width: 197,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(
                  height: context.screenHeight * 0.06,
                ),
                SizedBox(
                  width: context.screenWidth * .8,
                  child: Text(
                    "Meditation & mindfulness made simple",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.02,
                ),
                SizedBox(
                  width: context.screenWidth * .8,
                  child: Text(
                    'Focadot is the World’s most simple, powerful and rewarding way to experience mindfulness - enjoy!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/SelectMeditation');
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Select_Meditation()));
                  },
                  child: Container(
                    height: context.screenHeight * 0.06,
                    width: 325,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 22, 22, 1),
                        borderRadius: BorderRadius.all(Radius.circular(80))),
                    child: Center(
                      child: Text(
                        'Meditate Now For Free',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    'Already have an account?'
                        .text
                        .fontWeight(FontWeight.w300)
                        .make(),
                    SizedBox(
                      width: context.screenWidth * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/SignIn');
                      },
                      child: 'Sign In'
                          .text
                          .red700
                          .fontWeight(FontWeight.bold)
                          .make(),
                    )
                  ],
                ),
              ]),
            ))
      ]),
    );
  }
}
