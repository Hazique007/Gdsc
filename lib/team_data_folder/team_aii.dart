import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyGdscTeamAI {
  String id;
  String name;
  String position;
  NetworkImage imageurl;


  MyGdscTeamAI({

    required this.name,
    required this.id,
    required this.position,
    required this.imageurl,

  });
}

final List<MyGdscTeamAI> MYTEAMAI=[

  MyGdscTeamAI(name: 'Firaas Ahmed Khan', id: '1', position: 'AI TEAM', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/firaas_a_khan_LODMl2w.jpg')),
  MyGdscTeamAI(name: 'Musharraf Abdullah', id: '2', position: 'AI TEAM', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/musharraf_abdullah.jpg')),
  MyGdscTeamAI(name: 'Anaum Khan', id: '3', position: 'AI TEAM', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/anaum_khan_vRjsrjs.jpg')),

];
