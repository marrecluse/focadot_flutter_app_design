// ignore_for_file: unused_import, unnecessary_import, camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class DurationController extends GetxController{

  var timeduration =''.obs;

  void setDuration(String duration){
      timeduration.value= duration;
  }
}








class Select_Duration extends StatefulWidget {
  @override
  State<Select_Duration> createState() => _Select_Meditation();
}

class _Select_Meditation extends State<Select_Duration> {
  TextEditingController customChoice = TextEditingController();
  final DurationController durationController = Get.put(DurationController());

  String selectedChoice ='1 minute';
  String duration ='1';
                  
                    
                    
                    
                            
  
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
              'Duration',
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
                  'How long would you like to meditate for?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,

                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),


      CustomButton(
                text: '1 minute',
                isSelected: selectedChoice == '1 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice = '1 minute';
                    List<String> parts = selectedChoice.split(' ');
                    duration= parts[0];
                    
                  });
                }
                ),
      CustomButton(
                text: '3 minute',
                isSelected: selectedChoice == '3 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice= '3 minute';
                     List<String> parts = selectedChoice.split(' ');
                    duration= parts[0];
                  });
                }
                ),
      
      
      
      CustomButton(
                text: '5 minute',
                isSelected: selectedChoice == '5 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice= '5 minute';
                     List<String> parts = selectedChoice.split(' ');
                    duration= parts[0];
                  });
                }
                ),
      
      CustomButton(
                text: '10 minute',
                isSelected: selectedChoice == '10 minute',
                onPressed: (){
                  setState(() {
                    selectedChoice= '10 minute';
                     List<String> parts = selectedChoice.split(' ');
                    duration= parts[0];
                  });
                }
                ),
      CustomButton(
                text: 'Custom',
                isSelected: selectedChoice == 'Custom',
                onPressed: (){
            showDialog(
              context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Enter Custom Duration (in minutes)'),
          
          content: Container(
            child: TextField(
              controller: customChoice,
              keyboardType: TextInputType.number,
              onSubmitted: (value) {
          setState(() {
                      duration = value;
                      
                    });
              },
            
            
        
            ),
          ),
          actions: [
         TextButton(onPressed: (){
          Get.back();
          setState(() {
              duration = customChoice.text;

          });
         }, child: Text('close')
         )
          ],
        );
             
    });
                  setState(() {
                    selectedChoice= 'Custom';
                  });
                }
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
                    durationController.setDuration(duration);

                    
                    
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