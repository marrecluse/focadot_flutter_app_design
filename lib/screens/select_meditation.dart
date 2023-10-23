

















// ignore_for_file: unused_import, unnecessary_import, camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class Select_Meditation extends StatefulWidget {
  @override
  State<Select_Meditation> createState() => _Select_Meditation();
}

class _Select_Meditation extends State<Select_Meditation> {
  String selectedChoice ='Love';

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
              'Welcome, John!',
              style: TextStyle(
              fontSize: context.screenHeight*0.03, 
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
                  'What would you like to experience right now?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,

                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),


      CustomButton(
                text: 'Relaxation',
                isSelected: selectedChoice == 'Relaxation',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Relaxation';
                  });
                }
                ),
      CustomButton(
                text: 'Inner Peace',
                isSelected: selectedChoice == 'Inner Peace',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Inner Peace';
                  });
                }
                ),
      
      
      
      CustomButton(
                text: 'Inspiration',
                isSelected: selectedChoice == 'Inspiration',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Inspiration';
                  });
                }
                ),
      
      CustomButton(
                text: 'Gratitude',
                isSelected: selectedChoice == 'Gratitude',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Gratitude';
                  });
                }
                ),
      CustomButton(
                text: 'Love',
                isSelected: selectedChoice == 'Love',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Love';
                  });
                }
                ),
      CustomButton(
                text: 'Focus',
                isSelected: selectedChoice == 'Focus',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Focus';
                  });
                }
                ),
      CustomButton(
                text: 'Empowerment',
                isSelected: selectedChoice == 'Empowerment',
                onPressed: (){
                  setState(() {
                    selectedChoice= 'Empowerment';
                  });
                }
                ),
      
      
      
      
     




          
          
          
              SizedBox(
                height: context.screenHeight*0.03,
              ),

                Container(
                width: context.screenWidth*0.8,
                height: context.screenHeight*0.06,
                child: ElevatedButton(
                  
                  onPressed: () {
                    Get.to(Select_Duration());
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
