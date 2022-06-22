import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:havia_v1/screens/authentication/phoneauth_screen.dart';

class  AuthUi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 225,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)
              ),
                onPressed: (){
                //// now you can easily navigate to phone auth screen
                  // you can select any of those option as you wish

                  Navigator.pushNamed(context, PhoneAuthScreen.id);
                },
                child: Row(
                children:[
                Icon(Icons.phone_android_outlined,color:Colors.black,),
                SizedBox(width: 8,),
                Text('Continue With Phone',style: TextStyle(color: Colors.black),),
              ]
            )
            ),
          ),
          SignInButton(
            Buttons.Google,
            text: "Continue with Google",
            onPressed: () {},
          ),
          SignInButton(
            Buttons.FacebookNew,
            text: "Continue  with Facebook",
            onPressed: () {},
          ),
           Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('OR',style:  TextStyle(color: Colors.teal.shade900),),
       ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Login with email',
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900,
              decoration: TextDecoration.underline),


            ),
          )
        ],
      ),
    );
  }
}
