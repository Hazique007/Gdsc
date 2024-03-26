import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyGdscTeam {
  String id;
  String name;
  // String connect ;
  String position;
  NetworkImage imageurl;


  MyGdscTeam({

    required this.name,
    // required this.connect,
    required this.id,
    required this.position,
    required this.imageurl,

  });
}

final List<MyGdscTeam> MYTEAM=[
  MyGdscTeam(name: 'Abhishek Singh', id: '0', position: 'GDSC Lead',imageurl:NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_250,h_250,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/avatars/abhishek_singh_snIwYfS.jpg',) ),

  


];
