// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import, unused_import, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class Enter_Details extends StatefulWidget {
  @override
  State<Enter_Details> createState() => _Enter_Details();
}

class _Enter_Details extends State<Enter_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 22, 22, 1),
        titleSpacing: 0,
        centerTitle: true,// Center-align the title
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Focadot_white.png', width: 25, height: 25),
            SizedBox(height: 8),
            Text(
              'Almost there!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight * 0.08,
              ),
              SizedBox(
                width: context.screenWidth * 0.7,
                child: Text(
                  'Enter your details to save your meditation and begin!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ///Text Fields

              Container(
                width: context.screenWidth * 0.8,
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'First Name',
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
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

              Container(
                width: context.screenWidth * 0.8,
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
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

              Container(
                width: context.screenWidth * 0.8,
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
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

              // Remember Button

              SizedBox(
                height: context.screenHeight * 0.03,
              ),

              Text(
                'Remember',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),

              SizedBox(
                width: context.screenWidth * 0.7,
                child: Text(
                  'Remember All you need to do is to keep your body still, your eyes still, breath and observe the Focadot',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, letterSpacing: 1),
                ),
              ),

              SizedBox(
                height: context.screenHeight * 0.03,
              ),

              Container(
                width: context.screenWidth * 0.8,
                height: context.screenHeight * 0.08,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/SignIn');
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(
                        255, 22, 22, 1), // Set the background color to red
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          80), // Set the border radius to 80
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
