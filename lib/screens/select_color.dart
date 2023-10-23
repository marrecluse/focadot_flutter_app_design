// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, unnecessary_import

import 'package:circular_color_picker/circular_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/enter_details.dart';
import 'package:project1/screens/meditation_demo.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class Select_Color extends StatefulWidget {
  // final String imagePath='assets/theme1.png';
  // Variable to store the imagePath

  // Select_Color({required this.imagePath});

  Color selectedColor = Colors.white; // Initialize with a default color
  @override
  State<Select_Color> createState() => _Select_Color();
}

class _Select_Color extends State<Select_Color> {
  Color selectedColor = Colors.white;
  String imagePath = Get.arguments;


  @override
  void initState() {
    super.initState();
    // myController.storedImagePath.value = widget.imagePath;
  }

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
            Image.asset('assets/Focadot_white.png', width: 25, height: 25),
            SizedBox(height: 8),
            Text(
              'Color',
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
                height: context.screenHeight * 0.03,
              ),
              SizedBox(
                width: context.screenWidth * 0.7,
                child: Text(
                  'Select the color of your Focadot',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),
              FittedBox(
                child: Row(
                  children: [
                    CircularColorPicker(
                        radius: 100,
                        onColorChange: (color) {
                          setState(() {
                            selectedColor =
                                color; // Update the selectedColor variable when the color changes                  });
                            // Change it as you want
                          });
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: context.screenHeight * 0.02,
              ),
              Stack(alignment: Alignment.center, children: [
                Image.asset(imagePath),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    color: selectedColor,
                  ),
                ),
              ]),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),
              Container(
                width: context.screenWidth * 0.8,
                height: context.screenHeight * 0.08,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/MeditationDemo', arguments: {
                      "arg1":imagePath,
                      "arg2":selectedColor,

                    });

                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 22, 22, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: context.screenHeight*0.03,
              ),




            ],
          ),
        ),
      ),
    );
  }
}
