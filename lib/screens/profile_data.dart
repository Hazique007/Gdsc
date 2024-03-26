import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/screens/profile.dart';
import 'package:ionicons/ionicons.dart';

import '../utils/utils.dart';
import 'login.dart';


class ProfileData extends StatelessWidget {
  const ProfileData({super.key});

  @override
  Widget build(BuildContext context) {
  final auth =FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(


        actions: [
          IconButton(
              onPressed: () {
                auth.signOut().then((value) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());
                });


              },
              icon: Icon(
                Ionicons.exit_outline,
                color: Theme.of(context).iconTheme.color,
              ))
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body:
      ProfilePage(),
    );
  }
}


