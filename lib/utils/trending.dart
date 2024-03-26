import 'dart:ui';

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class Trending extends StatelessWidget {
  Trending({super.key});

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Text(
              'Trending🔥',
              style:
                  GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(

              children: [
                SizedBox(
                  height: 200,

                  width: double.infinity,
                  child: Container(

                    decoration: BoxDecoration(borderRadius:  BorderRadius.circular(10.0)),
                    child: AnotherCarousel(images: const [
                      AssetImage('Assets/tr.png'),

                      AssetImage('Assets/tr2.png'),

                      AssetImage('Assets/tr3.png'),

                    ],
                     boxFit: BoxFit.fitWidth,
                      dotSize: 5,
                        dotColor: Colors.white,
                        indicatorBgPadding: 1.0,
                      animationDuration: Duration(seconds: 2),



                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
