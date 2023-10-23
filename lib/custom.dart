// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unused_import, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:project1/screens/FeedBack.dart';
import 'package:project1/screens/select_color.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'dart:async';


class Custom extends StatefulWidget {


  @override
  _Custom createState() =>_Custom();


}

class _Custom extends State<Custom> {
  late String selectedImage;
  List<String> imagePaths = [
    "assets/theme1.png",
    "assets/theme2.png",
    "assets/theme3.png",
    "assets/theme4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select an Image"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Adjust the number of columns as needed
            ),
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImage = imagePaths[index];
                  });
                },
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      imagePaths[index],
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    if (imagePaths[index] == selectedImage)
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 32,
                      ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (selectedImage != null) {
                // Navigate to the next screen with the selected image
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Select_Color(selectedImage),
                //   ),
                // );
              } else {
                // Show an error message if no image is selected
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Please select an image."),
                  ),
                );
              }
            },
            child: Text("Next"),
          ),
        ],
      ),
    );
  }
}

// my_controller.dart





class CustomButton extends StatelessWidget{
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  

  CustomButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });
  

  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: context.screenWidth*0.8,
      // height: context.screenWidth*0.1,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 18,
            fontFamily: 'Poppins'
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: isSelected ? Colors.red : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(80.0))
            
          ),
          elevation: 0,
          onPrimary: Colors.red,
        ),
        
      ),
    );
  }
}


class CustomButtonFeedBack extends StatefulWidget {
  final String text;
  final Color Tcolor;
  final Color Bcolor;
  final bool isSelected;

  CustomButtonFeedBack({

    required this.text,
    required this.Tcolor,
    required this.Bcolor,
    required this.isSelected,
  });

  @override
  _CustomButtonFeedBackState createState() => _CustomButtonFeedBackState();
}

class _CustomButtonFeedBackState extends State<CustomButtonFeedBack> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.2,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? widget.Bcolor : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
          side: BorderSide(
            color: Vx.red500,
            width: 1,
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.Tcolor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}







class AnimatedCircle extends StatefulWidget {
Color selectedColor;
final duration;

AnimatedCircle({
  required this.selectedColor,
  required this.duration,

});

  @override
  _AnimatedCircleState createState() => _AnimatedCircleState();
}

class _AnimatedCircleState extends State<AnimatedCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true); // Reverses the animation at the end of each cycle

    _controller.addListener(() {
      setState(() {}); // Trigger a rebuild on each animation tick
    });

    _timer = Timer(Duration(minutes: int.parse(widget.duration)), () { 
            _controller.stop();
            Get.to(FeedBack());
    });
  }

  @override
  Widget build(BuildContext context) {
    double circleSize = 60 + (_controller.value * 60); // Increase and decrease size
    return Center(
      child: AnimatedContainer(
        duration: Duration.zero, // No need for a duration here
        width: circleSize,
        height: circleSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.selectedColor.withOpacity(0.5),
        ),
        // child: Icon(Icons.pan_tool, color: Colors.white, size: 30),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}









