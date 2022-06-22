import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class splashscreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.teal,
      Colors.white ,
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 48,
      fontFamily: 'Lato',
    );

    return  Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Image.asset('assets/images/h.png' ,color: Colors.teal.shade800,

              ),

            SizedBox(height: 2,),

        SizedBox(

          width: 200,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Sell & Buy',
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
