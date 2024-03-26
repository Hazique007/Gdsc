import 'dart:io';




import 'package:firebase_auth/firebase_auth.dart';
import 'package:gdsc/theme/theme_data.dart';
import 'package:gdsc/utils/theme_provider.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';


import 'package:flutter/material.dart';
import 'package:gdsc/screens/home_page.dart';
import 'package:gdsc/screens/login.dart';
import 'package:gdsc/screens/navvv.dart';
import 'package:gdsc/screens/signup.dart';
import 'package:gdsc/screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import '../user_auth/firebase_options.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyBjIjUAxmQJAl6TABKBUBGEZ3k69HC4I54', appId: '1:53211156869:android:e8f2eecd3c32ff9bae34ec', messagingSenderId: '53211156869', projectId: 'gdsc-9141d'))
      : await Firebase.initializeApp();

  runApp(ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});




  @override
  Widget build(context) {
    return MaterialApp(

      title: 'GDSC',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider> (context).themeData,
      home: SplashScreen()
      );

  }
}





