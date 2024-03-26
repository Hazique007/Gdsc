
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:gdsc/utils/colors.dart';
import 'package:gdsc/utils/events.dart';

import 'package:gdsc/utils/gdscom.dart';
import 'package:gdsc/screens/login.dart';
import 'package:gdsc/utils/theme_provider.dart';



import 'package:gdsc/utils/topcard.dart';
import 'package:gdsc/utils/trending.dart';
import 'package:gdsc/utils/utils.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import 'aboutus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUs()));

          }, icon: Icon(Ionicons.information_circle_outline,color: Theme.of(context).iconTheme.color,size: 25.0,)),

        ],
      ),
      drawer:
      Drawer(



        child: ListView(
          children: [
             ListTile(

                leading: Icon(Icons.light_mode),
                title: Text('Light Mode'),
               selectedColor: MyColors.Secondary,
               selectedTileColor:MyColors.Secondary,

               onTap: (){
                 Provider.of<ThemeProvider>(context,listen: false).Light();
               },
              ),



               ListTile(
                leading: Icon(Icons.nightlight_rounded),
                onTap: (){
                  Provider.of<ThemeProvider>(context,listen: false).Dark();
                },
                title: Text('Dark Mode'),
              ),


          ],

        ),
      ),
     
      body: SafeArea(
        
        child: ListView(
          padding: EdgeInsets.all(14),
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 140.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Welcome to\n',
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                        children: [
                          TextSpan(
                              text: 'GDSC',
                              style: GoogleFonts.montserrat(
                                  fontSize: 30, fontWeight: FontWeight.bold)),

                          // TextSpan(
                          //     text: 'Sign in to continue',
                          //     style: GoogleFonts.poppins(
                          //         fontSize: 10,
                          //         fontWeight: FontWeight.normal))
                        ]
                    ),
                  ),
                ),
              ],
            ),

            // Text(
            //   'GDSC ',
            //   style:
            //       GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            TopCard(),
            GdscCom(),
            SizedBox(height: 20.0,),
            Trending(),
            SizedBox(height: 20.0,),
            EventsCards(),

          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => GeminiBot()));
      // },
      // child: Icon(Icons.chat
      //
      // ),
      //   foregroundColor: MyColors.Primary,
      //   backgroundColor: MyColors.Background,
      // ),
    );
  }
}
