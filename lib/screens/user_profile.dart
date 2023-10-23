// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import, unused_import, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class UserProfile extends StatefulWidget {
  @override
  State<UserProfile> createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
    final DurationController durationController = Get.find();

  bool isYesSelected = false;
  TextEditingController _textEditingController = TextEditingController();
  String storedText = '';
  Color ButtonColor = Colors.white;
  Color TextColor = Colors.black;

  void selectButton(bool isYes){
    setState(() {
      isYesSelected = isYes;
    });
  }


  @override
  Widget build(BuildContext context) {
        final duration = durationController.timeduration.value;

    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Color.fromRGBO(255, 22, 22, 1),
          titleSpacing: 0, // Center-align the title
          title: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/Focadot_white.png', width: 25, height: 25),
                SizedBox(height: 9),
                Text(
                  "Welcome back, John",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: context.screenWidth > 700
                          ? context.screenWidth * 0.028
                          : context.screenWidth * 0.05,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.screenHeight * 0.05,
              ),
          
              Center(
                child: SizedBox(
                  width: context.screenWidth * 0.7,
                  child: Text(
                    'Your Meditation minutes',
          
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
          
              ), 
          
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red,
                      width: 6,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      duration,
                      
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                ),
              ),           
              Center(
                child: SizedBox(
                  width: context.screenWidth * 0.7,
                  child: Text(
                    "Congratulations!",
          
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
          
              ),
              Center(
                child: SizedBox(
                  width: context.screenWidth * 0.7,
                  child: Text(
                    "You've meditated for 111 minutes! ",
          
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
          
              ),

              Center(
                child: Image.asset("assets/Vector.png")
              ), 
          






              SizedBox(
              height: context.screenHeight * 0.03,
            ),




          
            Center(
              child: Container(
                width: context.screenWidth * 0.8,
                height: context.screenHeight * 0.08,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/Select_Previous');
                  },
                  child: Text(
                    'Select Most Recent',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
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
            ),
            SizedBox(
              height: context.screenHeight*0.02,
            ),
          
             Center(
              child: Container(
                width: context.screenWidth * 0.8,
                height: context.screenHeight * 0.08,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/SelectMeditation');
                  },
                  child: Text(
                    'Start Fresh',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins'
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color to red
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          80), // Set the border radius to 80
                    ),
                  ),
                ),
              ),
            ),
          
          
          
            ],
          ),
        ));
  }
}
