import 'dart:async';

import 'package:flutter/material.dart';

import 'package:gdsc/screens/signup.dart';
import 'package:gdsc/screens/splash_services.dart';


class SplashScreen extends StatefulWidget {
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices  splashScreen =SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage('Assets/gd.png',),width: 300,),
      ),
    );

    //   Center(
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Image.asset(
    //         'Assets/gd.png',
    //         width: 375,
    //         height: 250,
    //       )
    //     ],
    //   ),
    // );
  }
}
