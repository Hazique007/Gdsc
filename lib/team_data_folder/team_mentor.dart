import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyGdscTeamMentor {
  String id;
  String name;
  String position;
  NetworkImage imageurl;


  MyGdscTeamMentor({

    required this.name,
    required this.id,
    required this.position,
    required this.imageurl,

  });
}

final List<MyGdscTeamMentor> MYTEAMMENTOR=[

  MyGdscTeamMentor(name: 'Ale Imran', id: '1', position: 'Faculty Adviser', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/ale_imran.jpg')),
  MyGdscTeamMentor(name: 'Apoorva Goyal', id: '2', position: 'Mentor', imageurl:NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/apoorve_goyal.png')),
  MyGdscTeamMentor(name: 'Alweera Khan', id: '3', position: 'Mentor', imageurl:NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/alweera_khan.jpeg')),
  MyGdscTeamMentor(name: 'Maaz Bin Asad', id: '4', position: 'Mentor', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/featured_attendees/IMG_20200915_185622.jpg')),
  MyGdscTeamMentor(name: 'Sanjana Maheshwari', id: '5', position: 'Mentor', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/sanjana_maheshwari.jpeg')),
  MyGdscTeamMentor(name: 'Zoya Ahmad', id: '6', position: 'Mentor', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/zoya_ahmad_YEwRXNY.jpg')),



];
