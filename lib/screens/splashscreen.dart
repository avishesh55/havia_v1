import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class splashscreen  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

    return  Scaffold(
      backgroundColor: Colors.white54,
      body: Center(
        child: Column(
          children: [
              Image.asset('assets/images.png',
              color: Colors.white,

              ),

            SizedBox(height: 11,),

        SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Sell Or Buy',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),

            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
          ],
        ),
      ),
     
    );
  }
}
