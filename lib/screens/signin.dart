// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:project1/screens/home_page.dart';

import 'package:project1/screens/select_meditation.dart';
import 'package:velocity_x/velocity_x.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
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
                      fontSize: context.screenWidth * 0.07,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.circle,
                        size: context.screenWidth * 0.09,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: context.screenWidth * 0.04,
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
                SizedBox(
                  width: context.screenWidth * 0.4,
                  child: Text(
                    'Welcome back fellow Focadota!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: context.screenWidth * 0.04,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.05,
                ),
                Container(
                  width: context.screenWidth * 0.8,
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'First Name',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.02,
                ),
                Container(
                  width: context.screenWidth * 0.8,
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Select_Meditation());
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Select_Meditation()));
                  },
                  child: Container(
                    height: context.screenHeight * 0.07,
                    width: context.screenWidth * 0.55,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 22, 22, 1),
                        borderRadius: BorderRadius.all(Radius.circular(80))),
                    child: Center(
                      child: Text(
                        'Sign In & Meditate!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: context.screenHeight * 0.02,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
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
                    'Forget your email?'
                        .text
                        .fontWeight(FontWeight.w300)
                        .fontFamily('Poppins')
                        .make(),
                    SizedBox(
                      width: context.screenWidth * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/EnterDetails');
                      },
                      child: 'Start fresh'
                          .text
                          .red700
                          .fontWeight(FontWeight.bold)
                          .fontFamily('Poppins')
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
