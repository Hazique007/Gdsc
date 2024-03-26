

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCard extends StatelessWidget {
  TopCard({super.key});

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red.shade400, Colors.blueAccent],
            // stops: [0.3,0.9],
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(

        children: [
          Container(
            padding: EdgeInsets.only(left: 4.0,top: 20.0),
            margin: EdgeInsets.only(top: 20.0),
            child: Column(

              children: [
                RichText(text: TextSpan(
                  text: 'Find New\nExperience\n',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Get the most out of our GDSC app',style: GoogleFonts.montserrat(fontSize: 8,color: Colors.white,),
                    )
                  ]
                ))

                // Text('Find New\nExperience',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),

                // Text('Get the most out of our GDSC app',style:GoogleFonts.poppins(fontSize: 5,color: Colors.white),)
              ],

            ),

          ),


          SizedBox(
            width: 50,
          ),
          Image.asset('Assets/tc.png',width: 124,),

        ],

      ),
    );

  }
}
