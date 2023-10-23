// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, unused_import, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:circular_color_picker/circular_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/enter_details.dart';
import 'package:project1/custom.dart';
import 'package:project1/screens/select_duration.dart';
import 'package:velocity_x/velocity_x.dart';
import 'select_theme.dart';

class Meditation_Demo extends StatefulWidget {
  
  @override
  State<Meditation_Demo> createState() => _Meditation_Demo();
}

class _Meditation_Demo extends State<Meditation_Demo> {
  // Duration remainingDuration = Duration(seconds: 0); // Initialize with 0 seconds

  bool showHelloWorld = false;
  bool showRemainingTime=false;
String timeRemaining=''; 
  final DurationController durationController = Get.find();
  late AnimationController animationController;
 late Duration initialDuration;
  late Duration remainingDuration;

  @override
  void initState() {
            remainingDuration = Duration(seconds: 0);

    // TODO: implement initState
    if(showRemainingTime){
    // Convert the time string to a Duration
    List<String> timeParts = timeRemaining.split(':');
    int minutes = int.parse(timeParts[0]);
    int seconds = int.parse(timeParts[1]);
    remainingDuration = Duration(minutes: minutes, seconds: seconds);
    startCountdown();
    
    }

    
    Future.delayed(
      Duration(seconds: 1),(){
        showPopUpDialog();
        Future.delayed(
          Duration(seconds: 5),(){
            showPopUpDialog2();
          }
        );

    });
  }


  void startCountdown() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (remainingDuration.inSeconds <= 0) {
        timer.cancel();
      } else {
        setState(() {
          remainingDuration = remainingDuration - Duration(seconds: 1);
        });
      }
    });
  }




  void showPopUpDialog(){
    showDialog(context: context, builder: (BuildContext context){
        return SingleChildScrollView(
          child: Stack(
            
            children:[ 

              Positioned(
                
                top: context.screenWidth*0.05,
                left: context.screenWidth*.9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.red
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop(); //close the dialog

                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.amber,
                      size: context.screenWidth*0.07,
                      ),
                  ),
                ),
              ),
              
              AlertDialog(
              backgroundColor: Colors.transparent,
              
              title: SingleChildScrollView(
                child: Container(
                  height:(context.screenWidth > 800) ? context.screenWidth*0.6 : (context.screenWidth<300) ? context.screenWidth*0.5 : context.screenWidth*0.6,
                  width: context.screenWidth*0.4,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.red,
              
                    width: 3,),
                    color: Colors.white
                  
                  ),
                     
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                      Text('PRO TIP!',
                    style: TextStyle(
                          fontSize: context.screenWidth*0.05,
                          color: Colors.red,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        
                        ),),
                      Text(
                        "Double tap the screen background to see yourtime remaining or to exit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: context.screenWidth < 400 ? context.screenWidth*0.02 : context.screenWidth*0.03,
                        ),
                        
                        ),
                        Text('But try to avoid checking the time ;-)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: context.screenWidth*0.03,
                          color: Colors.red,
                      
                        ),
                          ),
                          SizedBox(
                            height: context.screenWidth*0.05,
                          ),
                        Container(
                    width: context.screenWidth*0.29,
                    height: context.screenWidth*0.1,
                    child: ElevatedButton(
                      
                      onPressed: () {
                  Navigator.of(context).pop(); //close the dialog
                      },
                      child: Text(
                        'Thanks, got it!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: context.screenWidth*0.03,
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
                  
                  
              
                  
                  
                  
                    
                    
                    
                            
                            ],),
                ),
                ),
              ),
              
              actions: [
                
                // TextButton(
                //   onPressed: (){
                // }, child: Text("close"))  
              ],
            ),
            ]
          ),
        );
    });
  }

   void showPopUpDialog2(){
    showDialog(context: context, builder: (BuildContext context){
        return SingleChildScrollView(
          child: Stack(
            
            children:[ 

              Positioned(
                
                top: context.screenWidth*0.05,
                left: context.screenWidth*.9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.red
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop(); //close the dialog

                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.amber,
                      size: context.screenWidth*0.07,
                      ),
                  ),
                ),
              ),
              
              AlertDialog(
              backgroundColor: Colors.transparent,
              
              title: SingleChildScrollView(
                child: Container(
                  height:(context.screenWidth > 800) ? context.screenWidth*0.6 : (context.screenWidth<300) ? context.screenWidth*0.5 : context.screenWidth*0.6,
                  width: context.screenWidth*0.4,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.red,
              
                    width: 3,),
                    color: Colors.white
                  
                  ),
                     
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                      Text('PRO TIP!',
                    style: TextStyle(
                          fontSize: context.screenWidth*0.05,
                          color: Colors.red,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        
                        ),),
                      Text(
                        "PRO TIP! Play some music through your Spotify or YoutubePremium if you want! ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: context.screenWidth < 400 ? context.screenWidth*0.02 : context.screenWidth*0.03,
                        ),
                        
                        ),
                        Text('We will build this into a later version of the app.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: context.screenWidth*0.03,
                          color: Colors.red,
                      
                        ),
                          ),
                          SizedBox(
                            height: context.screenWidth*0.05,
                          ),
                        Container(
                    width: context.screenWidth*0.29,
                    height: context.screenWidth*0.1,
                    child: ElevatedButton(
                      
                      onPressed: () {
                  Navigator.of(context).pop(); //close the dialog
                      },
                      child: Text(
                        'Thanks, got it!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: context.screenWidth*0.03,
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
                  
                  
              
                  
                  
                  
                    
                    
                    
                            
                            ],),
                ),
                ),
              ),
              
              actions: [
                
                // TextButton(
                //   onPressed: (){
                //   Navigator.of(context).pop(); //close the dialog
                // }, child: Text("close"))  
              ],
            ),
            ]
          ),
        );
    });
  }

  

  


  Color selectedColor = Colors.black; // Initialize with a default color
  @override
  Widget build(BuildContext context) {
    // final imagePath = myController.storedImagePath.value;
    final duration = durationController.timeduration.value;
final durationMinutes = Duration(minutes: int.parse(durationController.timeduration.value));
    final arguments= Get.arguments as Map<String, dynamic>;

    String imagePath = arguments["arg1"];
    final selectedColor= arguments["arg2"];



    return Scaffold(
      body: GestureDetector(
        onDoubleTap: (){
          setState(() {
            showHelloWorld = !showHelloWorld;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            //Background Image
        
          
           
           Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
      
            
            AnimatedCircle(selectedColor: selectedColor,duration: duration),

            Positioned(
              top: context.screenHeight*0.85,
              left: context.screenWidth*0.45,
              child: Text(
                  formatDuration(remainingDuration), // Format remainingDuration,
                style: TextStyle(
                  color: showHelloWorld ? Colors.white : Colors.transparent,
                  fontSize: 20,
                ),
              ),
            )
        
           
          
          ],
        ),
      ),
    );
  }
}
 String formatDuration(Duration durationMinutes) {
    final minutes = durationMinutes.inMinutes.remainder(60);
    final seconds = durationMinutes.inSeconds.remainder(60);
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
