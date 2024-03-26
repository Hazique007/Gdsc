import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/navvv.dart';
import '../user_auth/firebase_googleservices.dart';
import '../utils/colors.dart';

class GoogleAuthButton extends StatefulWidget {
  GoogleAuthButton( this.title,{super.key});

  String title;

  @override
  State<GoogleAuthButton> createState() => _GoogleAuthButtonState();
}



class _GoogleAuthButtonState extends State<GoogleAuthButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        await Firebaseservices().signInwithGoogle();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavvBaar()));
      },

      child: Container(
        width: 320,
        height: 50,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: MyColors.Background,border: Border.all(color: MyColors.Font)

        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/goo.png',width: 25,),
            Text(widget.title,style: GoogleFonts.montserrat(color: MyColors.Font),)

          ],
        ),
      ),
    );
  }
}
