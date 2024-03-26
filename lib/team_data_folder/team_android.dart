import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyGdscTeamAnd {
  String id;
  String name;
  String connect;
  String position;
  // VoidCallback link;
  NetworkImage imageurl;

  final LinkedinHazique= Uri.parse('https://www.linkedin.com/in/hazique-khan-4038a41aa/');


  MyGdscTeamAnd({

    required this.name,
    required this.id,
    required this.position,
    required this.imageurl,
    required this.connect,
    // required this.link

  });
}

final List<MyGdscTeamAnd> MYTEAMAND=[

  MyGdscTeamAnd(name: 'Hazique Khan', id: '1', position: 'Android Team',connect: 'Connect', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/hazique_khan.jpg')),
  MyGdscTeamAnd(name: 'Amaan Ahmad', id: '2', position: 'Android Team',connect: 'Connect', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/amaan_ahmad_S2ltXzh.jpg')),
];
