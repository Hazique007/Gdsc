import 'package:flutter/material.dart';

import 'package:gdsc/screens/gemini_bot.dart';
import 'package:gdsc/screens/profile_data.dart';
import 'package:gdsc/screens/splash_services.dart';
import 'package:gdsc/screens/home_page.dart';
import 'package:gdsc/screens/profile.dart';
import 'package:gdsc/screens/team.dart';
import 'package:gdsc/utils/topcard.dart';
import 'package:ionicons/ionicons.dart';

class NavvBaar extends StatefulWidget {
  NavvBaar({super.key});

  @override
  State<NavvBaar> createState() => _NavvBaarState();
}

class _NavvBaarState extends State<NavvBaar> {
  // PageController _pageController=PageController();
  int _selectedindex = 0;
  final screens = [

    HomePage(),
    GeminiBot(),

    MyTeam(),
    ProfileData()





  ];

  // void _onPageChanged(int index) {
  //   setState(() {
  //     _selectedindex = index;
  //   });
  // }
  //
  // void _onItemTapped(int i){
  //   _pageController.jumpToPage(i);
  // }

  @override
  Widget build(context) {
    return Scaffold(
      body:screens[_selectedindex],

      bottomNavigationBar:
          Container
            // (padding: EdgeInsets.only(right: 10.0,left: 10.0),
            // child: ClipRRect( borderRadius: BorderRadius.all(Radius.circular(200.0)),
            //   child: Container(
            (padding: EdgeInsets.only(),

            child: BottomNavigationBar (
                  selectedItemColor: Theme.of(context).primaryColor,
                    selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),


                    // unselectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
                    unselectedItemColor: Colors.grey,
                  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                  elevation: 0,

                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Theme.of(context).colorScheme.background,
                  // selectedIconTheme: Color,




                  items:[

        BottomNavigationBarItem(
                icon:Icon(Ionicons.home,size: 25.0,),


                // activeIcon: const Color(0xff232323),
                label: "Home" ,



        ),
        BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbox_ellipses,size: 25.0,),

                label: "ChatBot",
        ),
        BottomNavigationBarItem(
                icon: Icon(Ionicons.people,size: 25.0,),
                label: "Team",
        ),
        BottomNavigationBarItem(
                icon: Icon(Ionicons.person,size: 25.0,),
                label: "Profile",
        ),
      ],

                 currentIndex: _selectedindex,
                  onTap:(value){
                    setState(() {
                      _selectedindex=value;

                    });
                  }
                ),
              ),


    );
  }
}
