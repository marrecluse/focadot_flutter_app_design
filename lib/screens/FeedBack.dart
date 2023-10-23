// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import, unused_import, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:project1/screens/select_timer.dart';
import 'package:project1/custom.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedBack extends StatefulWidget {
  @override
  State<FeedBack> createState() => _FeedBack();
}

class _FeedBack extends State<FeedBack> {
  bool isYesSelected1 = false;
  bool isNoSelected1 = true;

  bool isYesSelected2 = false;
  bool isNoSelected2 =true;

  bool isYesSelected3 = false;
  bool isNoSelected3 = true;


  TextEditingController _textEditingController = TextEditingController();
  String storedText = '';
  Color ButtonColor = Colors.white;
  Color TextColor = Colors.black;

  // void selectButton(bool isYes) {
  //   setState(() {
  //     isYesSelected = isYes;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Color.fromRGBO(255, 22, 22, 1),
          titleSpacing: 0,
          centerTitle: true,
           // Center-align the title
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Focadot_white.png', width: 25, height: 25),
              SizedBox(height: 10),
              Text(
                "Wait! Before you leave, we'd \n really value your feedback!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: context.screenWidth > 700
                        ? context.screenWidth * 0.028
                        : context.screenWidth * 0.04,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.screenHeight * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "1. Was it easier to meditate than you thought?*",
                      style: TextStyle(
                          fontSize: context.screenWidth * 0.03,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //btn1
                        Container(
                          width: context.screenWidth * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               isNoSelected1=!isNoSelected1;
                               isYesSelected1=!isNoSelected1;
                                
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !isNoSelected1 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                              side: BorderSide(
                                color: Vx.red500,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'No',
                              style: TextStyle(
                                color: !isNoSelected1 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                       Container(
                          width: context.screenWidth * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               isYesSelected1=!isYesSelected1;
                               isNoSelected1=!isYesSelected1;
                                
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !isYesSelected1 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                              side: BorderSide(
                                color: Vx.red500,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                color: !isYesSelected1 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),

                        //btn2
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "2. Could you see yourself using this appagain if it had more features and was more customisable?*",
                      style: TextStyle(
                          fontSize: context.screenWidth * 0.03,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //btn3
                         Container(
                          width: context.screenWidth * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               isNoSelected2=!isNoSelected2;
                               isYesSelected2=!isNoSelected2;
                                
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !isNoSelected2 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                              side: BorderSide(
                                color: Vx.red500,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'No',
                              style: TextStyle(
                                color: !isNoSelected2 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                       Container(
                          width: context.screenWidth * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               isYesSelected2=!isYesSelected2;
                               isNoSelected2=!isYesSelected2;
                                
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !isYesSelected2 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                              side: BorderSide(
                                color: Vx.red500,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                color: !isYesSelected2 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "3. Would it be worth investing \$1 per week in your mindfulness through using a more advanced version of this app?*",
                      style: TextStyle(
                          fontSize: context.screenWidth * 0.03,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Container(
                          width: context.screenWidth * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               isNoSelected3=!isNoSelected3;
                               isYesSelected3=!isNoSelected3;
                                
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !isNoSelected3 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                              side: BorderSide(
                                color: Vx.red500,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'No',
                              style: TextStyle(
                                color: !isNoSelected3 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                       Container(
                          width: context.screenWidth * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               isYesSelected3=!isYesSelected3;
                               isNoSelected3=!isYesSelected3;
                                
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: !isYesSelected3 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                              side: BorderSide(
                                color: Vx.red500,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                color: !isYesSelected3 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "4. Any other feedback you'd like to share that could help us?",
                      style: TextStyle(
                          fontSize: context.screenWidth * 0.03,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    Stack(alignment: Alignment.topLeft, children: [
                      Container(
                        width: context.screenWidth * 1.0,
                        height: context.screenWidth * 0.3,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Vx.white,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 12,
                        right: 0,
                        bottom: 0,
                        child: TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type answer here',
                            hintStyle:
                                TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
                          ),
                        ),
                      ),
                    ])
                  ],
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
                        Get.toNamed('/UserProfile');
                      },
                      child: Text(
                        'Submit and Leave',
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
                ),
              ],
            ),
          ),
        ));
  }
}
