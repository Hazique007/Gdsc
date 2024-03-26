import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyGdscTeamWeb {
  String id;
  String name;
  String position;
  NetworkImage imageurl;


  MyGdscTeamWeb({

    required this.name,
    required this.id,
    required this.position,
    required this.imageurl,

  });
}

final List<MyGdscTeamWeb> MYTEAMWEB=[

  MyGdscTeamWeb(name: 'Mohammad Ali', id: '1', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/mohammad_ali_pS3k3pO.jpg')),
  MyGdscTeamWeb(name: 'Fiza Khan', id: '2', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/fiza_khan_56tRtNk.jpg')),
  MyGdscTeamWeb(name: 'Sharjeel Afridi', id: '3', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/sharjeel_afridi.jpg')),
  MyGdscTeamWeb(name: 'Avyukt Soni', id: '4', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/avyukt_soni_S8pZbRC.JPG')),
  MyGdscTeamWeb(name: 'Rayyan Nafees', id: '5', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/rayyan_nafees_oEMBl5s.png')),
  MyGdscTeamWeb(name: 'Priyanshu Singh', id: '6', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/priyanshu_singh_oWsTMuu.JPG')),
  MyGdscTeamWeb(name: 'Shahwaiz Islam', id: '7', position: 'Web & Tech Team', imageurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/22cobea132_shahwaizislam_islam.jpg')),



];
