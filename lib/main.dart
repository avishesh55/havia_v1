import 'package:flutter/material.dart';
import 'package:havia_v1/screens/Loginscreen.dart';
import 'package:havia_v1/screens/authentication/phoneauth_screen.dart';
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
      future: Future.delayed( const Duration (seconds: 3)), // after 3 seconds screen wil move to next screen
      builder: (context, AsyncSnapshot snapshot) {
        // Show Splash screen while waiting app reloads.

        if (snapshot.connectionState == ConnectionState.waiting) { // If its Connecting screen will go to splash screen
          return MaterialApp(home: splashscreen()); // create the Screen
        }

        else {
          return  MaterialApp(
            debugShowCheckedModeBanner: false, // to remove debug banner
            theme: ThemeData(
              primaryColor: Colors.white,
              fontFamily: 'Lato'

            ),
            // need to change this to initial screen, means starting
            home: Loginscreen(),
            routes: {
              // we add screen here for easy navigation
              //its a string
              Loginscreen.id: (context) =>  Loginscreen(),
              PhoneAuthScreen.id: (context) =>  PhoneAuthScreen(),
            },
          );
        }
      },
    );
  }
}
