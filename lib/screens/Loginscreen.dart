import 'package:flutter/material.dart';
import 'package:havia_v1/widgets/auth_ui.dart';


class Loginscreen extends StatelessWidget {
 static const String id='Login Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.teal.shade100,
      body: Column(
        children: [
          Expanded(child: Container(
            width: MediaQuery.of(context).size.width, // to get device width
            color: Colors.white,
            child:  Column(
              children: [
                const SizedBox(height: 100,),
                Image.asset('assets/images/h.png', color: Colors.teal.shade800,
                ),
                const SizedBox( height: 10,),
                Text('Sell & Buy',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade800
                ),)
              ],
            ),
            
          )
          ),
          Expanded(
              child: Container(
                child: AuthUi(),

              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('If you are continue, you are accepting \n Terms and conditions and privacy policy',
            textAlign: TextAlign.center,
              style: TextStyle(color: Colors.teal.shade900,fontSize: 8),),
          )
         
        ],
      ),
      
    );
  }
}


