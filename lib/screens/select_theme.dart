// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_color.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class Select_Theme extends StatefulWidget {
  @override
  _SelectThemeState createState() => _SelectThemeState();
}

class _SelectThemeState extends State<Select_Theme> {
  List<String> imagePaths = [
    "assets/theme1.png",
    "assets/theme2.png",
    "assets/theme3.png",
    "assets/theme4.png",
  ];
  List<bool> isSelected = [
    false,
    false,
    false,
    false
  ]; // Maintain selection state for each image.

  int selectedImageIndex = 0;

  void handleImageSelection(int index) {
    setState(() {
      if (selectedImageIndex == index) {
        selectedImageIndex = -1;
      } else {
        selectedImageIndex = index;
      }
    });
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
              'Theme',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      // ... (Your existing code for the scaffold)

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.screenHeight * 0.04,
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  child: Text(
                    'Select your theme for Relaxation and peace',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),

              // Images Grid

              VxScrollHorizontal(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SelectableImage(
                            imagePath: imagePaths[0],
                            isSelected: selectedImageIndex == 0,
                            onTap: () => handleImageSelection(0)),
                        SizedBox(
                          height: context.screenHeight * 0.02,
                        ),
                        SelectableImage(
                            imagePath: imagePaths[1],
                            isSelected: selectedImageIndex == 1,
                            onTap: () => handleImageSelection(1)),
                        
                      ],
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.04,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SelectableImage(
                            imagePath: imagePaths[2],
                            isSelected: selectedImageIndex == 2,
                            onTap: () => handleImageSelection(2)),
                       SizedBox(
                          height: context.screenHeight * 0.02,
                        ),
                        SelectableImage(
                            imagePath: imagePaths[3],
                            isSelected: selectedImageIndex == 3,
                            onTap: () => handleImageSelection(3)),
                      ],
                    ),
                  ],
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
                    Get.toNamed('/SelectColor',
                        arguments: imagePaths[selectedImageIndex]);
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
                height: context.screenWidth*0.2,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class SelectableImage extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  SelectableImage({
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(imagePath),
          if (isSelected)
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.check_circle,
                color: Colors.red,
                size: context.screenWidth * 0.08,
              ),
            ),
            
        ],
      ),
    );
  }
}




