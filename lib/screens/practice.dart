import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> with SingleTickerProviderStateMixin {
  String imagePath = "assets/theme1.png";
  // AnimationController controller;
  double scale = 0.0; // Track the scale value

  // @override
  // void initState() {
  //   super.initState();
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 5),
  //   );
  //   controller.addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       controller.reverse();
  //     } else if (status == AnimationStatus.dismissed) {
  //       controller.forward();
  //     }
  //   });
  //   controller.forward();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: TweenAnimationBuilder(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.amber,
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 5),
              builder: (context, value, child) {
                // Update the scale value
                scale = value;
                return Transform.scale(
                  scale: scale,
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
