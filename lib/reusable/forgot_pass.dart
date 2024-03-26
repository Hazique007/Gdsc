import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/utils.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailcontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0,top: 30.0),
                        child:  RichText(text: TextSpan(
                            text: 'Forgot Password?\n',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 35,color:MyColors.Font),
                            children: [
                              TextSpan(
                                text: 'Sit back while we retrieve your password',style: GoogleFonts.montserrat(fontSize: 12,color: Colors.grey,),
                              )
                            ]
                        ))
                        
                      ),
                    ],
                  ),

                  SizedBox(height: 90.0,)
                  
                  ,TextFormField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      auth.sendPasswordResetEmail(
                          email: _emailcontroller.text.toString()).then((value) {
                        Utils().toastMessage('Check your mail ');



                      }).onError((error, stackTrace) {
                        Utils().toastMessage(error.toString());
                      });
                    },
                    child: Container(
                      width: 320,
                      height: 50,
                      decoration: BoxDecoration(
                          color: MyColors.Primary,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                          child: Text(
                            'Get Code',
                            style: GoogleFonts.montserrat(color: MyColors.Background),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
