import 'dart:async';
// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/screens/login.dart';
import 'package:gdsc/screens/navvv.dart';

class SplashServices {




  void isLogin(BuildContext context) {
    final auth=FirebaseAuth.instance;
    final user = auth.currentUser;
    if(user!=null){
      Timer(
          Duration(seconds: 1),
              () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => NavvBaar())));

    }else{
      Timer(
          Duration(seconds: 1),
              () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage())));

    }

  }
}
