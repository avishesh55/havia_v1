import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatefulWidget {
static const String id='phone-authscreen';

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  var CountryCodeController =TextEditingController(text: '+977'); // here you can define your country code
  var phonenumberController = TextEditingController();


  String counterText='0';
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,),
        title: const Text('Login',style: TextStyle( color: Colors.black),),
      ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            const SizedBox(height: 50,),
            CircleAvatar(
              radius: 39,
              backgroundColor: Colors.teal.shade200,
              child: const Icon(
                CupertinoIcons.person_alt_circle_fill,
                color: Colors.white,
                size: 79,
              ),
            ),
            const SizedBox(height: 9,
            ),
            const Text(
              'Enter your Phone',
              style: TextStyle(
                  fontSize: 29,fontWeight: FontWeight.bold),
            ),
           const SizedBox(height:9),
            const Text(' We will send conformation cod to your phone',
            style: TextStyle(color: Colors.grey),
            ),
           Row(
             children: [
               Expanded(flex: 1,
                   child: TextFormField(
                     controller: CountryCodeController,
                     enabled: false,
                     decoration: const InputDecoration(
                       labelText: 'Country'
                     )
                   ),
               ),
               const SizedBox(width: 8,),
               Expanded(
                   flex: 3,

                   child: TextFormField(
                     keyboardType: TextInputType.phone,
                     controller: phonenumberController,
                     onChanged: (value){



                     },
                     decoration:const InputDecoration(
                       counterText: '10/10',

                       counterStyle: TextStyle(fontSize: 10),
                       labelText: 'Number',
                       hintText: 'Enter your phone number',
                       hintStyle: TextStyle(fontSize: 10,color:Colors.grey),

                     ),
                   ),
               ),
             ],
           )

          ],
      ),
        ),
    );
  }
}
//////Maximize return ///