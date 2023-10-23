// ignore_for_file: unused_import, unnecessary_import, camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class Select_Previous extends StatefulWidget {
  
  @override
  State<Select_Previous> createState() => _Select_Previous();
}

class _Select_Previous extends State<Select_Previous> {
  final DurationController durationController = Get.find();
  String selectedChoice ='1 minute';

  @override
  Widget build(BuildContext context) {
    final duration = durationController.timeduration.value;

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        toolbarHeight: context.screenWidth > 700
                          ? context.screenWidth * 0.2
                          : context.screenWidth * 0.3,
        backgroundColor: Color.fromRGBO(255, 22, 22, 1),
        titleSpacing: 0, // Center-align the title
        centerTitle: true,
        title:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Focadot_white.png', width: 25, height: 25),
            SizedBox(height: 9),
            Text(
              "Select from your\n previous meditations",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: context.screenWidth > 700
                      ? context.screenWidth * 0.02
                      : context.screenWidth * 0.05,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // Other properties and widgets for your app bar
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight * 0.02,
              ),
            

      CustomButton(
                text: 'Relaxation & peace 1',
                
                isSelected: selectedChoice == '1 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice = '1 minute';
                  });
                }
                ),
      CustomButton(
                text: 'Gratitude & love 2',
                isSelected: selectedChoice == '3 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice= '3 minute';
                  });
                }
                ),
      
      
      
      CustomButton(
                text: 'Inspiration & creativity 1',
                isSelected: selectedChoice == '5 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice= '5 minute';
                  });
                }
                ),
      
      CustomButton(
                text: 'Focus & power 3',
                isSelected: selectedChoice == '10 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice= '10 minute';
                  });
                }
                ),
      
      
      
     




          
          
          
              SizedBox(
                height: context.screenHeight*0.13,
              ),

                Container(
                width: context.screenWidth*0.8,
                height: context.screenHeight*0.06,
                child: ElevatedButton(
                  
                  onPressed: () {
                    Get.toNamed('/SelectTheme');
                    
                      },
                  child: Text(
                    'Begin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins'
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    
                    primary: Color.fromRGBO(
                        255, 22, 22, 1), // Set the background color to red
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(80), // Set the border radius to 80
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight*0.06,

              ),
      
      
              
            ],
          ),
        ),
      ),
    );
  }
}
