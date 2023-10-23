// ignore_for_file: unused_import, unnecessary_import, camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class Select_Timer extends StatefulWidget {
  
  @override
  State<Select_Timer> createState() => _Select_Meditation();
}

class _Select_Meditation extends State<Select_Timer> {
  String selectedChoice ='1 minute';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 22, 22, 1),
        titleSpacing: 0, // Center-align the title
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Focadot_white.png', width: 25, height: 25,
            scale: context.screenWidth*0.0005,),
            SizedBox(height: 8),
            Text(
              'Breath Timer',
              style: TextStyle(
              fontSize: context.screenWidth*0.05,
              fontWeight: FontWeight.w600, 
              color: Colors.white),
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
              SizedBox(
                width: context.screenWidth*0.7,
                child: Text(
                  'Choose your breathing rhythm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,

                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),


      CustomButton(
                text: 'Inhale',
                isSelected: selectedChoice == 'Inhale',
                onPressed: (){
                  setState(() {
                    selectedChoice = 'Inhale';
                  });
                }
                ),
      CustomButton(
                text: 'Inhale Hold',
                isSelected: selectedChoice == 'Inhale Hold',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Inhale Hold';
                  });
                }
                ),
      
      
      
      CustomButton(
                text: 'Exhale',
                isSelected: selectedChoice == 'Exhale',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Exhale';
                  });
                }
                ),
      
      CustomButton(
                text: 'Exhale Hold',
                isSelected: selectedChoice == 'Exhale Hold',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Exhale Hold';
                  });
                }
                ),
      Container(
      width: context.screenWidth*0.8,
      // height: context.screenWidth*0.1,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        
        onPressed: (){},
        child: Text(
          'Choose for me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(80.0))
            
          ),
          elevation: 0,
          onPrimary: Colors.red,
        ),
        
      ),
    ),
      
      
      
      
     




          
          
          
              SizedBox(
                height: context.screenHeight*0.08,
              ),

                Container(
                width: context.screenWidth*0.8,
                height: context.screenHeight*0.06,
                child: ElevatedButton(
                  
                  onPressed: () {
                    Get.toNamed('/SelectTheme');
                    
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
