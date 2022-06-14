import 'package:flutter/material.dart';
import 'package:havia_v1/screens/splashscreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //Replace thr 3 second delay with your initilization code;
      future: Future.delayed( Duration (seconds: 3)), // after 3 seconds screen wil move to next screen
      builder: (context, AsyncSnapshot snapshot) {
        // Show Splash screen while waiting app reloads.

        if (snapshot.connectionState == ConnectionState.waiting) { // If its Connecting screen will go to splash screen
          return MaterialApp(home: splashscreen()); // create the Screen
        }

        else {
          return  MaterialApp(
            home: Scaffold(
                body: Center(child: Text('App loader '))),
          );
        }
      },
    );
  }
}
