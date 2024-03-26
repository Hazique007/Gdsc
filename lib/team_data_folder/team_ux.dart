import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyGdscTeamUX {
  String id;
  String name;
  String position;
  NetworkImage imageurl;


  MyGdscTeamUX({

    required this.name,
    required this.id,
    required this.position,
    required this.imageurl,

  });
}

final List<MyGdscTeamUX> MYTEAMUX=[

  MyGdscTeamUX(name: 'Mohammad Hazique Khan', id: '1', position: 'UI/UX Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/hazique_khan.jpg')),
  MyGdscTeamUX(name: 'Akriti Pundhir', id: '2', position: 'UI/UX Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/akriti_pundhir_0cSuOop.jpg')),
  MyGdscTeamUX(name: 'Asna Fatimah', id: '3', position: 'UI/UX Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/asna_fatimah_18MInFj.jpg')),




];
